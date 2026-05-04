import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurante_event.freezed.dart';

@freezed
class RestauranteEvent with _$RestauranteEvent {
  const factory RestauranteEvent.load() = _Load;
}