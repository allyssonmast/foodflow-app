import '../../data/model/produto_request.dart';

abstract class RestauranteEvent {
  const RestauranteEvent();
}

class LoadProdutos extends RestauranteEvent {}

class CreateProduto extends RestauranteEvent {
  final ProdutoRequest request;

  const CreateProduto(this.request);
}

class UpdateProduto extends RestauranteEvent {
  final int id;
  final ProdutoRequest request;

  const UpdateProduto(this.id, this.request);
}
