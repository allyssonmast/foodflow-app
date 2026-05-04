import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/restaurante_repository.dart';
import 'restaurante_event.dart';
import 'restaurante_state.dart';

@injectable
class RestauranteBloc extends Bloc<RestauranteEvent, RestauranteState> {
  final RestauranteRepository repository;

  RestauranteBloc(this.repository)
      : super(const RestauranteState.initial()) {
    on<RestauranteEvent>(_onEvent);
  }

  Future<void> _onEvent(
      RestauranteEvent event,
      Emitter<RestauranteState> emit,
      ) async {
    await event.when(
      load: () async {
        emit(const RestauranteState.loading());

        try {
          final restaurantes = await repository.getRestaurantes();
          emit(RestauranteState.loaded(restaurantes));
        } catch (e) {
          emit(RestauranteState.error(e.toString()));
        }
      },
    );
  }
}