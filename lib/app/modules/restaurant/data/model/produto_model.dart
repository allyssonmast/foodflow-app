class ProdutoModel {

  final int id;
  final String nome;
  final String descricao;
  final double preco;
  final bool disponivel;
  final String restauranteNome;
  final List<String> categorias;

  ProdutoModel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.disponivel,
    required this.restauranteNome,
    required this.categorias,
  });

  factory ProdutoModel.fromJson(
      Map<String, dynamic> json,
      ) {

    return ProdutoModel(
      id: json['id'],
      nome: json['nome'],
      descricao: json['descricao'],
      preco: (json['preco'] as num).toDouble(),
      disponivel: json['disponivel'],
      restauranteNome: json['restauranteNome'],
      categorias: List<String>.from(
        json['categorias'] ?? [],
      ),
    );
  }
}