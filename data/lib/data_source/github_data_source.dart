import 'package:domain/model/user/user.dart';

abstract class GithubDataSource {
  Future<User> getUser(String userName);
}
