import 'package:data/data_source/auth_data_source.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRemoteDataSource extends AuthDataSource {
  AuthRemoteDataSource();

  @factoryMethod  
  static Future<AuthRemoteDataSource> create() async {
    return AuthRemoteDataSource();
  }


  @override
  Future<void> signIn() async {}

  @override
  Future<void> signUp() async {}

  @override
  Future<void> signOut() async {}
}
