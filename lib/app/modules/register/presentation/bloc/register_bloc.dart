import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/register_request.dart';
import '../../data/models/register_restaurant.dart';
import '../../data/register_service.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterService service;

  RegisterBloc(this.service)
      : super(const RegisterState.initial()) {

    on<RegisterClienteSubmitted>(
      _onRegisterClienteSubmitted,
    );

    on<RegisterRestauranteSubmitted>(
      _onRegisterRestauranteSubmitted,
    );
  }

  Future<void> _onRegisterClienteSubmitted(
      RegisterClienteSubmitted event,
      Emitter<RegisterState> emit,
      ) async {

    try {

      emit(const RegisterState.loading());

      await service.registerCliente(
        RegisterClienteRequest(
          username: event.username,
          nome: event.nome,
          email: event.email,
          password: event.senha,
        ),
      );

      emit(const RegisterState.success());

    } catch (e) {

      emit(RegisterState.error(e.toString()));
    }
  }

  Future<void> _onRegisterRestauranteSubmitted(
      RegisterRestauranteSubmitted event,
      Emitter<RegisterState> emit,
      ) async {

    try {

      emit(const RegisterState.loading());

      await service.registerRestaurante(
        RegisterRestauranteRequest(
          username: event.username,
          nome: event.nome,
          descricao: event.descricao,
          endereco: event.endereco,
          password: event.senha,
        ),
      );

      emit(const RegisterState.success());

    } catch (e) {

      emit(RegisterState.error(e.toString()));
    }
  }
}