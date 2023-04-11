import 'package:data/data_source/network/common/api_error/api_error.dart';
import 'package:flutter/foundation.dart';

abstract class BaseApi {
  String get baseUrl;
}

extension BaseApiExt on BaseApi {
  Uri buildUri(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
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
}
