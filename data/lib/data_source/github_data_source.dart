import 'package:domain/model/query/query.dart';
import 'package:domain/model/repository/repositories.dart';
import 'package:domain/model/user/user.dart';

abstract class GithubDataSource {
  Future<User> getUser(String userName);
  Future<Repositories> search(Query query);
}
