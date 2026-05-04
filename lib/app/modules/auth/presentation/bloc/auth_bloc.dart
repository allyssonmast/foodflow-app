import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

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
      await repository.login(userName, senha);
      emit(const AuthState.authenticated());
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

    if (isLogged) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.unauthenticated());
    }
  }
}