import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/auto_router/routes_imports.gr.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_event.dart';
import '../../../domain/model/cliente_model.dart';
import '../../bloc/cliente_bloc.dart';
import '../../bloc/cliente_event.dart';
import '../../bloc/cliente_state.dart';


@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final nomeController = TextEditingController();
  final emailController = TextEditingController();

  int? clienteId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Configurações"),
        centerTitle: true,
      ),
      body: BlocConsumer<ClienteBloc, ClienteState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (cliente) {
              clienteId = cliente.id;
              nomeController.text = cliente.nome;
              emailController.text = cliente.email;
            },
            success: (cliente) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Dados atualizados!")),
              );
            },
            error: (msg) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(msg)));
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            updating: () => true,
            orElse: () => false,
          );

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: nomeController,
                  decoration: const InputDecoration(labelText: "Nome"),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: "Email"),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            if (clienteId == null) return;

                            context.read<ClienteBloc>().add(
                              ClienteEvent.update(
                                ClienteModel(
                                  id: clienteId!,
                                  nome: nomeController.text,
                                  email: emailController.text,
                                ),
                              ),
                            );
                          },
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : const Text("Atualizar"),
                  ),
                ),
                const Spacer(),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {

                      context.read<AuthBloc>().add(
                        const AuthEvent.logout(),
                      );

                      context.router.replaceAll([
                        const LoginPageRoute(),
                      ]);
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text("Sair"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
