import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../restaurants/domain/model/restaurante_model.dart';
import '../../domain/model/produto_model.dart';

part 'restaurante_detalhe_event.freezed.dart';

@freezed
class RestauranteDetalheEvent with _$RestauranteDetalheEvent {
  const factory RestauranteDetalheEvent.load(RestauranteModel restaurante) = _Load;
  const factory RestauranteDetalheEvent.addItem(ProdutoModel produto) = _AddItem;
  const factory RestauranteDetalheEvent.removeItem(ProdutoModel produto) = _RemoveItem;
}