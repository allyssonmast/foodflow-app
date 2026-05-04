import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/cliente_model.dart';

part 'cliente_event.freezed.dart';

@freezed
class ClienteEvent with _$ClienteEvent {
  const factory ClienteEvent.load() = _Load;
  const factory ClienteEvent.update(ClienteModel cliente) = _Update;
}