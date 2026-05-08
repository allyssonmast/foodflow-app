abstract class AuthRepository {
  Future<String> login(String userName, String senha);
  Future<void> logout();
  Future<bool> isLogged();
  Future<String?> getToken();
}