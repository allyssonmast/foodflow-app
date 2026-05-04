import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/cliente_model.dart';

part 'cliente_state.freezed.dart';

@freezed
class ClienteState with _$ClienteState {
  const factory ClienteState.initial() = _Initial;
  const factory ClienteState.loading() = _Loading;
  const factory ClienteState.loaded(ClienteModel cliente) = _Loaded;
  const factory ClienteState.updating() = _Updating;
  const factory ClienteState.success(ClienteModel cliente) = _Success;
  const factory ClienteState.error(String message) = _Error;
}