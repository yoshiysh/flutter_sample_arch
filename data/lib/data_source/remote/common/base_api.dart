import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:data/data_source/remote/common/api_error/api_error.dart';

abstract class BaseApi {
  String get baseUrl;
  String path = '/';
  Map<String, String> get headers;
}

extension BaseApiExt on BaseApi {
  Uri _buildUri(Map<String, dynamic>? queryParameters) {
    try {
      Uri uri = Uri.https(baseUrl, path, queryParameters);
      debugPrint('[API URL] = $uri');
      return uri;
    } on FormatException catch (_) {
      throw const APIError.notFound();
    } catch (_) {
      throw const APIError.unknown();
    }
  }

  Future<http.Response> _call(Future<http.Response> Function() call) async {
    try {
      return await call();
    } catch (error) {
      debugPrint('[API ERROR]: ${error.toString()}');
      if (error is UnsupportedError) {
        throw const APIError.notFound();
      } else if (error is SocketException) {
        throw const APIError.noInternetConnection();
      } else {
        throw const APIError.unknown();
      }
    }
  }

  dynamic _validate(http.Response response) {
    final String responseBody = response.body;
    debugPrint('[API RESPONSE]: $responseBody');

    final int statusCode = response.statusCode;
    switch (statusCode) {
      case 200:
        return json.decode(responseBody);
      case 401:
        throw const APIError.invalidApiKey();
      case 404:
        throw const APIError.notFound();
      default:
        debugPrint('[API STATUS CODE]: $statusCode');
        throw const APIError.unknown();
    }
  }

  Future<T> get<T>({
    required http.Client client,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic data) mapper,
  }) async {
    final response = await _call(() => client.get(
          _buildUri(queryParameters),
          headers: headers,
        ));
    return mapper(_validate(response));
  }
}
