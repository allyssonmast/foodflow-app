import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/register_request.dart';
import '../../data/register_service.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterService service;

  RegisterBloc(this.service)
      : super(const RegisterState.initial()) {
    on<RegisterSubmitted>(_onRegisterSubmitted);
  }

  Future<void> _onRegisterSubmitted(
      RegisterSubmitted event,
      Emitter<RegisterState> emit,
      ) async {
    try {
      emit(const RegisterState.loading());

      await service.register(
        RegisterRequest(
          username: event.username,
          password: event.senha,
          nome: event.nome,
          email: event.email,
        ),
      );

      emit(const RegisterState.success());
    } catch (e) {
      emit(RegisterState.error(e.toString()));
    }
  }
}