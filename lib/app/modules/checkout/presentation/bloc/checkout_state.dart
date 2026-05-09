import 'package:equatable/equatable.dart';

import '../../data/checkout_response.dart';
import '../../domain/checkout_model.dart';

class CheckoutState extends Equatable {
  final bool isLoading;
  final MetodoPagamento metodoPagamento;
  final CheckoutResponse? response;
  final String? error;

  const CheckoutState({
    this.isLoading = false,
    this.metodoPagamento = MetodoPagamento.pix,
    this.response,
    this.error,
  });

  CheckoutState copyWith({
    bool? isLoading,
    MetodoPagamento? metodoPagamento,
    CheckoutResponse? response,
    String? error,
  }) {
    return CheckoutState(
      isLoading: isLoading ?? this.isLoading,
      metodoPagamento: metodoPagamento ?? this.metodoPagamento,
      response: response ?? this.response,
      error: error,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    metodoPagamento,
    response,
    error,
  ];
}