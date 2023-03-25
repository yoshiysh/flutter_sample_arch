import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@riverpod
Auth auth(AuthRef ref, String email, String password) {
  return Auth('', '');
}

@freezed
class Auth with _$Auth {
  factory Auth(String email, String password) = _Auth;
}
