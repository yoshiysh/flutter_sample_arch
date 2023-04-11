import 'package:data/data_source/remote/common/api_client.dart';
import 'package:data/data_source/remote/github/github_api.dart';
import 'package:domain/model/user/user.dart';
import 'package:domain/repository/github_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GithubRepository)
class GithubDefaultRepository implements GithubRepository {
  GithubDefaultRepository(
    this._client,
    this._api,
  );

  final ApiClient _client;
  final GithubApi _api;

  @override
  Future<User> fetchUser({required String userName}) => _client.get(
        _api.user(userName),
        mapper: (data) => User.fromJson(data),
      );
}
