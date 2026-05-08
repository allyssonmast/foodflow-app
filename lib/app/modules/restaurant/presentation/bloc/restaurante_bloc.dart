import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/produto_service.dart';
import 'restaurante_event.dart';
import 'restaurante_state.dart';

@injectable
class RestauranteBloc extends Bloc<RestauranteEvent, RestauranteState> {
  final ProdutoService service;

  RestauranteBloc(this.service) : super(const RestauranteState.initial()) {
    on<LoadProdutos>(_onLoadProdutos);

    on<CreateProduto>(_onCreateProduto);

    on<UpdateProduto>(_onUpdateProduto);
  }

  Future<void> _onLoadProdutos(
    LoadProdutos event,
    Emitter<RestauranteState> emit,
  ) async {
    try {
      emit(const RestauranteState.loading());

      final produtos = await service.meusProdutos();

      emit(RestauranteState.loaded(produtos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }

  Future<void> _onCreateProduto(
    CreateProduto event,
    Emitter<RestauranteState> emit,
  ) async {
    try {
      emit(const RestauranteState.loading());

      await service.criar(event.request);

      final produtos = await service.meusProdutos();

      emit(RestauranteState.loaded(produtos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }

  Future<void> _onUpdateProduto(
    UpdateProduto event,
    Emitter<RestauranteState> emit,
  ) async {
    try {
      emit(const RestauranteState.loading());

      await service.atualizar(event.id, event.request);

      final produtos = await service.meusProdutos();

      emit(RestauranteState.loaded(produtos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }
}
