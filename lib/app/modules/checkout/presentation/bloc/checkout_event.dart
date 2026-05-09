import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/checkout_model.dart';

part 'checkout_event.freezed.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.changeMetodo(MetodoPagamento metodo) =
      ChangeMetodo;

  const factory CheckoutEvent.finalizar() = Finalizar;
}
