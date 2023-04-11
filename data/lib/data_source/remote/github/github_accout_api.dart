import 'package:data/data_source/remote/github/github_api.dart';

class GithubUsersApi extends GithubApi {
  GithubUsersApi(String userName) {
    path = '/users/$userName';
  }
}
