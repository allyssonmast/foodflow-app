import '../model/produto_model.dart';

abstract class RestauranteDetailRepository {
  Future<List<ProdutoModel>> getProdutos(int restauranteId);
}