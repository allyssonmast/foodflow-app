import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_bloc.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {

  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated({
    required UserRole role,
  }) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.error(String message) = _Error;
}