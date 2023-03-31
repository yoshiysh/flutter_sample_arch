import 'package:domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userContainerProvider = Provider((ref) {
  final getIt = GetIt.instance;
  final repository = getIt.get<AuthRepository>();
  return UserContainer(repository);
});

class UserContainer extends ChangeNotifier {
  UserContainer(this._authRepository);

  final AuthRepository _authRepository;
  String? _user;
  bool get isAuthenticated => _user != null;

  Future<void> signIn() {
    return _authRepository.signIn().then((result) {
      result.ifSuccess((data) {
        _user = 'user';
        notifyListeners();
      });
    });
  }

  Future signUp() {
    return _authRepository.signUp().then((result) {
      result.when(
        success: (_) {
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }

  Future signOut() {
    return _authRepository.signOut().then((result) {
      result.when(
        success: (_) {
          _user = null;
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }
}
