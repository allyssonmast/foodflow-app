import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/pedido_model.dart';

part 'orders_state.freezed.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(false) bool isLoading,

    @Default([]) List<PedidoModel> pedidos,

    String? error,
  }) = _OrdersState;
}
