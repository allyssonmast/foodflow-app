class RegisterRestauranteRequest {

  final String username;
  final String password;
  final String nome;
  final String descricao;
  final String endereco;

  RegisterRestauranteRequest({
    required this.username,
    required this.password,
    required this.nome,
    required this.descricao,
    required this.endereco,
  });

  Map<String, dynamic> toJson() {

    return {
      'username': username,
      'password': password,
      'nome': nome,
      'descricao': descricao,
      'endereco': endereco,
    };
  }
}