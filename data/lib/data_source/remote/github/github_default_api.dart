import 'package:data/data_source/remote/common/base_api.dart';

abstract class GithubDefaultApi extends BaseApi {
  @override
  String get baseUrl => 'api.github.com';

  @override
  Map<String, String> get headers => {
        'content-type': 'application/json',
      };
}
