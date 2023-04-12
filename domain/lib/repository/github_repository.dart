import 'package:domain/model/query/query.dart';
import 'package:domain/model/user/user.dart';

abstract class GithubRepository {
  Future<User> getUser({required String userName});
  Future<void> search({required Query query});
}
