import 'package:data/data_source/auth_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'auth_remote_data_source.config.dart';

@Singleton(as: AuthDataSource)
class AuthRemoteDataSource extends AuthDataSource {
  AuthRemoteDataSource();

  @override
  Future<void> signIn() async {}

  @override
  Future<void> signUp() async {}

  @override
  Future<void> signOut() async {}
}

@injectableInit
void configureDataDependencies(GetIt getIt) => getIt.init();
