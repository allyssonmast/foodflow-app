class ProdutoModel {
  final int id;
  final String nome;
  final String descricao;
  final double preco;

  ProdutoModel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
  });

  factory ProdutoModel.fromJson(Map<String, dynamic> json) {
    return ProdutoModel(
      id: json['id'],
      nome: json['nome'],
      descricao: json['descricao'],
      preco: (json['preco'] as num).toDouble(),
    );
  }
}