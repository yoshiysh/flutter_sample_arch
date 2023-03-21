import 'package:flutter_sample/data/data_source/auth_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authDataSourceProvider = Provider((ref) => AuthRemoteDataSource());

class AuthRemoteDataSource extends AuthDataSource {
  AuthRemoteDataSource();

  @override
  Future<void> signIn() async {}

  @override
  Future<void> signUp() async {}

  @override
  Future<void> signOut() async {}
}
