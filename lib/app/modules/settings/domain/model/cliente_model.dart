class ClienteModel {
  final int id;
  final String nome;
  final String email;

  ClienteModel({
    required this.id,
    required this.nome,
    required this.email,
  });

  factory ClienteModel.fromJson(Map<String, dynamic> json) {
    return ClienteModel(
      id: json['id'],
      nome: json['nome'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "email": email,
    };
  }
}