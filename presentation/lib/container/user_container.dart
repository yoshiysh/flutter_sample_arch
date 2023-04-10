import 'package:domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userContainerProvider = Provider((ref) {
  final AuthRepository repository = GetIt.instance.get();
  return UserContainer(authRepository: repository);
});

class UserContainer extends ChangeNotifier {
  UserContainer({required this.authRepository});

  final AuthRepository authRepository;
  String? _user;
  bool get isAuthenticated => _user != null;

  Future<void> signIn() {
    return authRepository.signIn().then((result) {
      result.ifSuccess((data) {
        _user = 'user';
        notifyListeners();
      });
    });
  }

  Future signUp() {
    return authRepository.signUp().then((result) {
      result.when(
        success: (_) {
          notifyListeners();
        },
        failure: (_) => result,
      );
    });
  }

  Future signOut() {
    return authRepository.signOut().then((result) {
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
