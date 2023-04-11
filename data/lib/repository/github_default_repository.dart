import 'package:data/data_source/remote/common/base_api.dart';
import 'package:data/data_source/remote/github/github_accout_api.dart';
import 'package:domain/model/user/user.dart';
import 'package:domain/repository/github_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: GithubRepository)
class GithubDefaultRepository implements GithubRepository {
  GithubDefaultRepository({required this.client});
  final http.Client client;

  @override
  Future<User> fetchUser({required String userName}) =>
      GithubUsersApi(userName).get(
        client: client,
        mapper: (data) => User.fromJson(data),
      );
}
