import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../orders/domain/pedido_model.dart';
import '../../../restaurante_details/domain/model/produto_model.dart';

part 'restaurante_state.freezed.dart';

@freezed
abstract class RestauranteState with _$RestauranteState {
  const factory RestauranteState.initial() = _Initial;

  const factory RestauranteState.loading() = _Loading;

  const factory RestauranteState.success() = _Success;

  const factory RestauranteState.error(String message) = _Error;

  const factory RestauranteState.loaded({
    required List<ProdutoModel> produtos,

    required List<PedidoModel> pedidos,
  }) = _Loaded;
}
