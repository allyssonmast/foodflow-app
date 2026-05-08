part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class RegisterSubmitted extends RegisterEvent {
  final String username;
  final String nome;
  final String email;
  final String senha;

  const RegisterSubmitted({
    required this.username,
    required this.nome,
    required this.email,
    required this.senha,
  });
}