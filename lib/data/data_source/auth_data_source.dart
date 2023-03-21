abstract class AuthDataSource {
  Future<void> signIn();
  Future<void> signUp();
  Future<void> signOut();
}
