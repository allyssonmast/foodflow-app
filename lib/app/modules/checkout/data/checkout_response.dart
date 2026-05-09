class CheckoutResponse {
  final int pedidoId;
  final int pagamentoId;
  final String statusPedido;
  final String statusPagamento;
  final double valorTotal;

  CheckoutResponse({
    required this.pedidoId,
    required this.pagamentoId,
    required this.statusPedido,
    required this.statusPagamento,
    required this.valorTotal,
  });

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) {
    return CheckoutResponse(
      pedidoId: json["pedidoId"],
      pagamentoId: json["pagamentoId"],
      statusPedido: json["statusPedido"],
      statusPagamento: json["statusPagamento"],
      valorTotal: (json["valorTotal"] as num).toDouble(),
    );
  }
}