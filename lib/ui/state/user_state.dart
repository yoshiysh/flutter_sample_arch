import 'package:flutter/foundation.dart';
import 'package:flutter_sample/data/repository/auth_default_repository.dart';
import 'package:flutter_sample/data/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userStateProvider = Provider((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return UserState(repository);
});

class UserState extends ChangeNotifier {
  UserState(this._authRepository);

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
      return result.when(
        success: (_) {
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }

  Future signOut() {
    return _authRepository.signOut().then((result) {
      return result.when(
        success: (_) {
          _user = null;
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }
}
