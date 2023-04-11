import 'package:data/data_source/remote/common/base_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GithubApi extends BaseApi {
  @override
  String get baseUrl => 'api.github.com';

  Uri user(String userName) => buildUri('/users/$userName');
}
