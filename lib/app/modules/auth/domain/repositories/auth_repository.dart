abstract class AuthRepository {
  Future<void> login(String email, String senha);
  Future<void> logout();
  Future<bool> isLogged();
}