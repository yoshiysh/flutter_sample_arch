import 'package:data/data_source/github_data_source.dart';
import 'package:domain/model/query/query.dart';
import 'package:domain/model/repository/repositories.dart';
import 'package:domain/model/user/user.dart';
import 'package:domain/repository/github_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GithubRepository)
class GithubDefaultRepository implements GithubRepository {
  @factoryMethod
  GithubDefaultRepository.from(this._dataSource);

  final GithubDataSource _dataSource;

  @override
  Future<User> getUser({required String userName}) =>
      _dataSource.getUser(userName);

  @override
  Future<Repositories> search({required Query query}) =>
      _dataSource.search(query);
}
