import 'package:data/data_source/auth_data_source.dart';
import 'package:data/data_source/remote/auth_remote_data_source.dart';
import 'package:domain/model/result.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authRepositoryProvider = Provider((ref) {
  final dataSource = ref.watch(authDataSourceProvider);
  return AuthDefaultRepository(dataSource);
});

class AuthDefaultRepository implements AuthRepository {
  const AuthDefaultRepository(this._dataSource);

  final AuthDataSource _dataSource;

  @override
  Future<Result<void>> signIn() =>
      Result.guardFuture(() async => (await _dataSource.signIn()));

  @override
  Future<Result<void>> signUp() =>
      Result.guardFuture(() async => (await _dataSource.signUp()));

  @override
  Future<Result<void>> signOut() =>
      Result.guardFuture(() async => (await _dataSource.signOut()));
}