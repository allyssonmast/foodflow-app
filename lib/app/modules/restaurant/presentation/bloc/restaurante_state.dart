import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../restaurante_details/domain/model/produto_model.dart';

part 'restaurante_state.freezed.dart';

@freezed
class RestauranteState with _$RestauranteState {
  const factory RestauranteState.initial() = _Initial;

  const factory RestauranteState.loading() = _Loading;

  const factory RestauranteState.loaded(List<ProdutoModel> produtos) = _Loaded;

  const factory RestauranteState.success() = _Success;

  const factory RestauranteState.error(String message) = _Error;
}
