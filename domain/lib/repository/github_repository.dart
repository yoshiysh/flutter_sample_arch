import 'package:domain/model/query/query.dart';
import 'package:domain/model/repository/repositories.dart';
import 'package:domain/model/user/user.dart';

abstract class GithubRepository {
  Future<User> getUser({required String userName});
  Future<Repositories> search({required Query query});
}
