import 'package:data/data_source/auth_data_source.dart';
import 'package:data/data_source/remote/auth_remote_data_source.dart';
import 'package:data/repository/auth_default_repository.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  // Future<AuthDataSource> get authDataSource => AuthRemoteDataSource.create();

  @lazySingleton
  AuthDataSource get authDataSource => AuthRemoteDataSource();

  @lazySingleton
  AuthRepository get authRepository => AuthDefaultRepository(authDataSource); 
}
