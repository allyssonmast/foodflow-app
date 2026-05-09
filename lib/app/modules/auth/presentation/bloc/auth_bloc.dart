import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../domain/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(const AuthState.initial()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.when(
      login: (userName, senha) => _onLogin(userName, senha, emit),

      logout: () => _onLogout(emit),

      checkAuth: () => _onCheckAuth(emit),
    );
  }

  Future<void> _onLogin(
    String userName,
    String senha,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    try {
      final token = await repository.login(userName, senha);

      final decoded = JwtDecoder.decode(token);

      final role = _mapRole(decoded['role']);

      final userId = decoded['id'];

      emit(AuthState.authenticated(role: role, userId: userId));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onLogout(Emitter<AuthState> emit) async {
    await repository.logout();

    emit(const AuthState.unauthenticated());
  }

  Future<void> _onCheckAuth(Emitter<AuthState> emit) async {
    final isLogged = await repository.isLogged();

    if (!isLogged) {
      emit(const AuthState.unauthenticated());

      return;
    }

    try {
      final token = await repository.getToken();

      final decoded = JwtDecoder.decode(token!);

      final role = _mapRole(decoded['role']);

      emit(AuthState.authenticated(role: role, userId: decoded['id']));
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }

  UserRole _mapRole(dynamic role) {
    switch (role) {
      case 'ROLE_ADMIN':
        return UserRole.admin;

      case 'ROLE_RESTAURANTE':
        return UserRole.restaurante;

      default:
        return UserRole.cliente;
    }
  }
}

enum UserRole { admin, cliente, restaurante }
