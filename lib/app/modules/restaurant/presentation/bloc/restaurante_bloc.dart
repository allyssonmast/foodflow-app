import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../orders/data/pedido_repository.dart';
import '../../../orders/domain/pedido_model.dart';
import '../../data/produto_service.dart';
import '../bloc/restaurante_event.dart';
import '../bloc/restaurante_state.dart';

@injectable
class RestauranteBloc extends Bloc<RestauranteEvent, RestauranteState> {
  final ProdutoService service;

  final PedidoRepository pedidoService;

  RestauranteBloc(this.service, this.pedidoService)
    : super(const RestauranteState.initial()) {
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

      final pedidos = await pedidoService.pedidosRestaurante(
        event.restauranteId,
      );

      emit(RestauranteState.loaded(produtos: produtos, pedidos: pedidos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }

  Future<void> _onCreateProduto(
    CreateProduto event,
    Emitter<RestauranteState> emit,
  ) async {
    try {
      final pedidos = state.maybeWhen(
        loaded: (_, pedidos) => pedidos,
        orElse: () => <PedidoModel>[],
      );

      await service.criar(event.request);

      final produtos = await service.meusProdutos();

      emit(const RestauranteState.success());

      emit(RestauranteState.loaded(produtos: produtos, pedidos: pedidos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }

  Future<void> _onUpdateProduto(
    UpdateProduto event,
    Emitter<RestauranteState> emit,
  ) async {
    try {
      final pedidos = state.maybeWhen(
        loaded: (_, pedidos) => pedidos,
        orElse: () => <PedidoModel>[],
      );

      await service.atualizar(event.id, event.request);

      final produtos = await service.meusProdutos();

      emit(const RestauranteState.success());

      emit(RestauranteState.loaded(produtos: produtos, pedidos: pedidos));
    } catch (e) {
      emit(RestauranteState.error(e.toString()));
    }
  }
}
