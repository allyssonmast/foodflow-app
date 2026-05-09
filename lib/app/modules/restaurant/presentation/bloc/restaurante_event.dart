import '../../data/model/produto_request.dart';

abstract class RestauranteEvent {}

class LoadProdutos extends RestauranteEvent {
  final int restauranteId;

  LoadProdutos(this.restauranteId);
}

class CreateProduto extends RestauranteEvent {
  final ProdutoRequest request;

  CreateProduto(this.request);
}

class UpdateProduto extends RestauranteEvent {
  final int id;

  final ProdutoRequest request;

  UpdateProduto(this.id, this.request);
}
