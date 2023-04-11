import 'dart:convert';
import 'dart:io';

import 'package:data/data_source/network/common/api_error/api_error.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  @factoryMethod
  ApiClient.from(this._client);

  Map<String, String> headers = {
    'content-type': 'application/json',
  };
  final http.Client _client;
}

extension ApiClientExt on ApiClient {
  Future<T> get<T>(
    Uri uri, {
    required T Function(dynamic data) mapper,
  }) async {
    final response = await _call(() => _client.get(
          uri,
          headers: headers,
        ));
    return mapper(_validate(response));
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
}
