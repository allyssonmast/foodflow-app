// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PedidoModel _$PedidoModelFromJson(Map<String, dynamic> json) => _PedidoModel(
  id: (json['id'] as num).toInt(),
  restauranteNome: json['restauranteNome'] as String,
  status: json['status'] as String,
  valorTotal: (json['valorTotal'] as num).toDouble(),
  criadoEm: json['criadoEm'] as String,
);

Map<String, dynamic> _$PedidoModelToJson(_PedidoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restauranteNome': instance.restauranteNome,
      'status': instance.status,
      'valorTotal': instance.valorTotal,
      'criadoEm': instance.criadoEm,
    };
