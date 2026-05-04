import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              ],
            ),
          );
        },
      ),
    );
  }
}
