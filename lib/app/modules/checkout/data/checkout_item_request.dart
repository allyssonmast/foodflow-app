class CheckoutItemRequest {
  final int produtoId;
  final int quantidade;

  CheckoutItemRequest({
    required this.produtoId,
    required this.quantidade,
  });

  Map<String, dynamic> toJson() {
    return {
      "produtoId": produtoId,
      "quantidade": quantidade,
    };
  }
}