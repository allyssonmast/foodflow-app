class RegisterRequest {
  final String username;
  final String password;
  final String nome;
  final String email;

  RegisterRequest({
    required this.username,
    required this.password,
    required this.nome,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'nome': nome,
      'email': email,
    };
  }
}