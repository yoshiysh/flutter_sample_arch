import 'package:data/data_source/auth_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthDataSource)
class AuthRemoteDataSource extends AuthDataSource {
  @factoryMethod
  AuthRemoteDataSource.from();

  @override
  Future<void> signIn() async {}

  @override
  Future<void> signUp() async {}

  @override
  Future<void> signOut() async {}
}
