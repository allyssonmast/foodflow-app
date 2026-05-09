import '../domain/checkout_model.dart';
import 'checkout_item_request.dart';

class CheckoutRequest {
  final int clienteId;
  final int restauranteId;
  final List<CheckoutItemRequest> itens;
  final MetodoPagamento metodoPagamento;

  CheckoutRequest({
    required this.clienteId,
    required this.restauranteId,
    required this.itens,
    required this.metodoPagamento,
  });

  Map<String, dynamic> toJson() {
    return {
      "clienteId": clienteId,
      "restauranteId": restauranteId,
      "itens": itens.map((e) => e.toJson()).toList(),
      "metodoPagamento": metodoPagamento.name.toUpperCase(),
    };
  }
}
