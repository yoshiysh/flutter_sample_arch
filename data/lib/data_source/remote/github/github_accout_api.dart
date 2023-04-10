import 'package:data/data_source/remote/github/github_default_api.dart';

class GithubAccountApi extends GithubDefaultApi {
  GithubAccountApi({required String userName}) {
    path = '/users/$userName';
  }
}
