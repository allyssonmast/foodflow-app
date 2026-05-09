import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/pedido_repository.dart';
import 'orders_event.dart';
import 'orders_state.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final PedidoRepository repository;

  OrdersBloc(this.repository) : super(const OrdersState()) {
    on<OrdersEvent>((event, emit) async {
      await event.when(
        load: (clienteId) async {
          try {
            emit(state.copyWith(isLoading: true, error: null));

            final pedidos = await repository.buscarPedidosCliente(clienteId);

            emit(state.copyWith(isLoading: false, pedidos: pedidos));
          } catch (e) {
            emit(state.copyWith(isLoading: false, error: e.toString()));
          }
        },
      );
    });
  }
}
