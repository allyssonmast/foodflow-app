import 'package:freezed_annotation/freezed_annotation.dart';

part 'pedido_model.freezed.dart';
part 'pedido_model.g.dart';

@freezed
abstract class PedidoModel with _$PedidoModel {
  const factory PedidoModel({
    required int id,
    required String restauranteNome,
    required String status,
    required double valorTotal,
    required String criadoEm,
  }) = _PedidoModel;

  factory PedidoModel.fromJson(Map<String, dynamic> json) =>
      _$PedidoModelFromJson(json);
}