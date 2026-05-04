import 'package:foodflow/app/modules/restaurante_details/domain/model/produto_model.dart';

class CartItem {
  final ProdutoModel produto;
  final int quantidade;

  CartItem({
    required this.produto,
    required this.quantidade,
  });

  CartItem copyWith({int? quantidade}) {
    return CartItem(
      produto: produto,
      quantidade: quantidade ?? this.quantidade,
    );
  }
}