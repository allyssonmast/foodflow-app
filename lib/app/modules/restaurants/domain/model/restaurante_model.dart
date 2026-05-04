class RestauranteModel {
  final int id;
  final String nome;
  final String descricao;
  final String endereco;
  final bool ativo;

  RestauranteModel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.endereco,
    required this.ativo,
  });

  factory RestauranteModel.fromJson(Map<String, dynamic> json) {
    return RestauranteModel(
      id: json['id'],
      nome: json['nome'],
      descricao: json['descricao'],
      endereco: json['endereco'],
      ativo: json['ativo'],
    );
  }
}