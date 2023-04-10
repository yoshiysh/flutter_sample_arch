import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:data/data_source/remote/common/api_error/api_error.dart';

abstract class BaseApi {
  String get baseUrl;
  String path = '';
  Map<String, String> get headers;

  Uri _uri = Uri();
}

extension BaseApiExt on BaseApi {
  BaseApi buildUri(
      {required Map<String, dynamic> Function() parametersBuilder}) {
    _uri = Uri.https(baseUrl, path, parametersBuilder());
    return this;
  }

  Future<T> get<T>({
    required http.Client client,
    required T Function(dynamic data) builder,
  }) async {
    try {
      debugPrint('url = $_uri');
      final response = await client.get(_uri, headers: headers);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return builder(data);
        case 401:
          throw const APIError.invalidApiKey();
        case 404:
          throw const APIError.notFound();
        default:
          throw const APIError.unknown();
      }
    } on SocketException catch (_) {
      throw const APIError.noInternetConnection();
    } finally {
      client.close();
    }
  }
}
