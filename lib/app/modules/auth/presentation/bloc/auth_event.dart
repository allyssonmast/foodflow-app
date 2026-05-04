import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String userName, String senha) = _Login;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.checkAuth() = _CheckAuth;
}