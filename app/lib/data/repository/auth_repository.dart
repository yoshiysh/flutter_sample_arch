import 'package:app/data/model/result.dart';

abstract class AuthRepository {
  Future<Result<void>> signIn();
  Future<Result<void>> signUp();
  Future<Result<void>> signOut();
}
