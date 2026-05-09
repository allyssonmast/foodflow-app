import 'package:equatable/equatable.dart';

import '../../restaurante_details/domain/model/cart_item_model.dart';

enum MetodoPagamento { pix, cartao }

class CheckoutModel extends Equatable {
  final int restauranteId;
  final int clienteId;
  final List<CartItem> itens;
  final MetodoPagamento metodoPagamento;
  final double total;

  const CheckoutModel({
    required this.restauranteId,
    required this.clienteId,
    required this.itens,
    required this.metodoPagamento,
    required this.total,
  });

  CheckoutModel copyWith({MetodoPagamento? metodoPagamento}) {
    return CheckoutModel(
      restauranteId: restauranteId,
      clienteId: clienteId,
      itens: itens,
      metodoPagamento: metodoPagamento ?? this.metodoPagamento,
      total: total,
    );
  }

  @override
  List<Object?> get props => [
    restauranteId,
    clienteId,
    itens,
    metodoPagamento,
    total,
  ];
}
