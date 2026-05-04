import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/cliente_repository.dart';
import 'cliente_event.dart';
import 'cliente_state.dart';

@injectable
class ClienteBloc extends Bloc<ClienteEvent, ClienteState> {
  final ClienteRepository repository;

  ClienteBloc(this.repository)
      : super(const ClienteState.initial()) {
    on<ClienteEvent>(_onEvent);
  }

  Future<void> _onEvent(
      ClienteEvent event,
      Emitter<ClienteState> emit,
      ) async {
    await event.when(
      load: () async {
        emit(const ClienteState.loading());

        try {
          final cliente = await repository.getMe();
          emit(ClienteState.loaded(cliente));
        } catch (e) {
          emit(ClienteState.error(e.toString()));
        }
      },

      update: (cliente) async {
        emit(const ClienteState.updating());

        try {
          final updated =
          await repository.updateCliente(cliente.id, cliente);

          emit(ClienteState.success(updated));
        } catch (e) {
          emit(ClienteState.error(e.toString()));
        }
      },
    );
  }
}