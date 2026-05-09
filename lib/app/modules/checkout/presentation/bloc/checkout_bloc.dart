import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/checkout_item_request.dart';
import '../../data/checkout_request.dart';
import '../../domain/checkout_model.dart';
import '../../domain/finalizar_checkout_usecase.dart';
import 'checkout_event.dart';
import 'checkout_state.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final FinalizarCheckoutUsecase usecase;
  final CheckoutModel checkout;

  CheckoutBloc(this.usecase, @factoryParam this.checkout)
    : super(const CheckoutState()) {
    on<ChangeMetodo>(_onChangeMetodo);
    on<Finalizar>(_onFinalizar);
  }

  void _onChangeMetodo(ChangeMetodo event, Emitter<CheckoutState> emit) {
    emit(state.copyWith(metodoPagamento: event.metodo));
  }

  Future<void> _onFinalizar(
    Finalizar event,
    Emitter<CheckoutState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      final request = CheckoutRequest(
        clienteId: checkout.clienteId,
        restauranteId: checkout.restauranteId,
        metodoPagamento: state.metodoPagamento,
        itens: checkout.itens.map((e) {
          return CheckoutItemRequest(
            produtoId: e.produto.id,
            quantidade: e.quantidade,
          );
        }).toList(),
      );

      final response = await usecase(request);

      emit(state.copyWith(isLoading: false, response: response));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
