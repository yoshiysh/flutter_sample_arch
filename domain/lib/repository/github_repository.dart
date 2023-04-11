import 'package:domain/model/user/user.dart';

abstract class GithubRepository {
  Future<User> getUser({required String userName});
}
