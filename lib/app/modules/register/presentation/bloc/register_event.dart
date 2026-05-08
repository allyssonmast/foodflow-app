part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class RegisterClienteSubmitted extends RegisterEvent {
  final String username;
  final String nome;
  final String email;
  final String senha;

  const RegisterClienteSubmitted({
    required this.username,
    required this.nome,
    required this.email,
    required this.senha,
  });
}

class RegisterRestauranteSubmitted extends RegisterEvent {
  final String username;
  final String nome;
  final String descricao;
  final String endereco;
  final String senha;

  const RegisterRestauranteSubmitted({
    required this.username,
    required this.nome,
    required this.descricao,
    required this.endereco,
    required this.senha,
  });
}