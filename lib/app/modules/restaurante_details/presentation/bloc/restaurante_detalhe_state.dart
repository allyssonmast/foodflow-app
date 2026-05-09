import '../../domain/model/cart_item_model.dart';
import '../../domain/model/produto_model.dart';
import '../../../restaurants/domain/model/restaurante_model.dart';

class RestauranteDetalheState {
  final RestauranteModel? restaurante;

  final List<ProdutoModel> produtos;

  final Map<int, CartItem> carrinho;

  final bool isLoading;

  const RestauranteDetalheState({
    this.restaurante,
    this.produtos = const [],
    this.carrinho = const {},
    this.isLoading = false,
  });

  RestauranteDetalheState copyWith({
    RestauranteModel? restaurante,
    List<ProdutoModel>? produtos,
    Map<int, CartItem>? carrinho,
    bool? isLoading,
  }) {
    return RestauranteDetalheState(
      restaurante: restaurante ?? this.restaurante,
      produtos: produtos ?? this.produtos,
      carrinho: carrinho ?? this.carrinho,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  int get totalItens {
    return carrinho.values.fold(
      0,
          (sum, item) => sum + item.quantidade,
    );
  }

  double get totalPreco {
    return carrinho.values.fold(
      0.0,
          (sum, item) =>
      sum + item.quantidade * item.produto.preco,
    );
  }
}