import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/register_bloc.dart';

class RegisterForm extends StatefulWidget {
  final bool loading;

  const RegisterForm({
    super.key,
    required this.loading,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final nomeController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              labelText: 'Nome',
            ),
          ),
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: senhaController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Senha',
            ),
          ),

          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.loading
                  ? null
                  : () {
                context.read<RegisterBloc>().add(
                    RegisterSubmitted(
                      username: usernameController.text,
                      nome: nomeController.text,
                      email: emailController.text,
                      senha: senhaController.text,
                    ),
                );
              },
              child: widget.loading
                  ? const CircularProgressIndicator()
                  : const Text('Cadastrar'),
            ),
          ),
        ],
      ),
    );
  }
}