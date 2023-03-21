import 'package:flutter_sample/data/data_source/auth_data_source.dart';
import 'package:flutter_sample/data/data_source/remote/auth_remote_data_source.dart';
import 'package:flutter_sample/data/model/result.dart';
import 'package:flutter_sample/data/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authRepositoryProvider = Provider((ref) {
  final dataSource = ref.watch(authDataSourceProvider);
  return AuthDefaultRepository(dataSource);
});

class AuthDefaultRepository implements AuthRepository {
  const AuthDefaultRepository(this._dataSource);

  final AuthDataSource _dataSource;

  @override
  Future<Result<void>> signIn() {
    return Result.guardFuture(() async => (await _dataSource.signIn()));
  }

  @override
  Future<Result<void>> signUp() {
    return Result.guardFuture(() async => (await _dataSource.signUp()));
  }

  @override
  Future<Result<void>> signOut() {
    return Result.guardFuture(() async => (await _dataSource.signOut()));
  }
}
