import 'package:data/data_source/remote/common/base_api.dart';

abstract class GithubApi extends BaseApi {
  @override
  String get baseUrl => 'api.github.com';
}
