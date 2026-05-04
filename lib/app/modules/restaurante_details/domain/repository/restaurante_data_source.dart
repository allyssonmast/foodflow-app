import '../model/produto_model.dart';

abstract class RestauranteDataSource {
  Future<List<ProdutoModel>> getProdutos(int restauranteId);
}