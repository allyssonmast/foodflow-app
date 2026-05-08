class ProdutoRequest {

  final String nome;
  final String descricao;
  final double preco;
  final bool disponivel;
  final List<String> categorias;

  ProdutoRequest({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.disponivel,
    required this.categorias,
  });

  Map<String, dynamic> toJson() {

    return {
      'nome': nome,
      'descricao': descricao,
      'preco': preco,
      'disponivel': disponivel,
      'categoriasIds': [],
    };
  }
}