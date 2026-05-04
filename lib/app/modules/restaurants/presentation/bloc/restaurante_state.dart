import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/restaurante_model.dart';

part 'restaurante_state.freezed.dart';

@freezed
class RestauranteState with _$RestauranteState {
  const factory RestauranteState.initial() = _Initial;
  const factory RestauranteState.loading() = _Loading;
  const factory RestauranteState.loaded(List<RestauranteModel> restaurantes) = _Loaded;
  const factory RestauranteState.error(String message) = _Error;
}