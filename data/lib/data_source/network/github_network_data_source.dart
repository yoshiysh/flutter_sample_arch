import 'package:data/data_source/github_data_source.dart';
import 'package:data/data_source/network/api/github_api.dart';
import 'package:data/data_source/network/api/api_client.dart';
import 'package:domain/model/user/user.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GithubDataSource)
class GithubNetworkDataSource extends GithubDataSource {
  @factoryMethod
  GithubNetworkDataSource.from(this._client, this._api);

  final ApiClient _client;
  final GithubApi _api;

  @override
  Future<User> getUser(String userName) => _client.get(
        _api.user(userName),
        mapper: (data) => User.fromJson(data),
      );
}
