import 'package:bloc/bloc.dart';
import 'package:foodflow/app/modules/restaurante_details/domain/repository/restaurante_repository.dart';
import 'package:foodflow/app/modules/restaurante_details/presentation/bloc/restaurante_detalhe_event.dart';
import 'package:foodflow/app/modules/restaurante_details/presentation/bloc/restaurante_detalhe_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/cart_item_model.dart';

@injectable
class RestauranteDetalheBloc
    extends Bloc<RestauranteDetalheEvent, RestauranteDetalheState> {
  final RestauranteDetailRepository repository;

  RestauranteDetalheBloc(this.repository)
      : super(const RestauranteDetalheState()) {
    on<RestauranteDetalheEvent>(_onEvent);
  }

  Future<void> _onEvent(
      RestauranteDetalheEvent event,
      Emitter<RestauranteDetalheState> emit,
      ) async {
    await event.when(
      load: (id) async {
        emit(state.copyWith(isLoading: true));

        final produtos = await repository.getProdutos(id);

        emit(state.copyWith(
          produtos: produtos,
          isLoading: false,
        ));
      },

      addItem: (produto) {
        final carrinho = Map<int, CartItem>.from(state.carrinho);

        if (carrinho.containsKey(produto.id)) {
          final item = carrinho[produto.id]!;
          carrinho[produto.id] =
              item.copyWith(quantidade: item.quantidade + 1);
        } else {
          carrinho[produto.id] =
              CartItem(produto: produto, quantidade: 1);
        }

        emit(state.copyWith(carrinho: carrinho));
      },

      removeItem: (produto) {
        final carrinho = Map<int, CartItem>.from(state.carrinho);

        if (!carrinho.containsKey(produto.id)) return;

        final item = carrinho[produto.id]!;

        if (item.quantidade <= 1) {
          carrinho.remove(produto.id);
        } else {
          carrinho[produto.id] =
              item.copyWith(quantidade: item.quantidade - 1);
        }

        emit(state.copyWith(carrinho: carrinho));
      },
    );
  }
}