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

class _RegisterFormState extends State<RegisterForm>
    with SingleTickerProviderStateMixin {

  late final TabController _tabController;

  final clienteUsernameController = TextEditingController();
  final clienteNomeController = TextEditingController();
  final clienteEmailController = TextEditingController();
  final clienteSenhaController = TextEditingController();

  final restauranteUsernameController = TextEditingController();
  final restauranteNomeController = TextEditingController();
  final restauranteDescricaoController = TextEditingController();
  final restauranteEnderecoController = TextEditingController();
  final restauranteSenhaController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Cliente'),
            Tab(text: 'Restaurante'),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [

              /// CLIENTE
              SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [

                    TextField(
                      controller: clienteUsernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: clienteNomeController,
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: clienteEmailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: clienteSenhaController,
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
                            RegisterClienteSubmitted(
                              username:
                              clienteUsernameController.text,
                              nome:
                              clienteNomeController.text,
                              email:
                              clienteEmailController.text,
                              senha:
                              clienteSenhaController.text,
                            ),
                          );
                        },
                        child: widget.loading
                            ? const CircularProgressIndicator()
                            : const Text('Cadastrar Cliente'),
                      ),
                    ),
                  ],
                ),
              ),

              /// RESTAURANTE
              SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [

                    TextField(
                      controller: restauranteUsernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: restauranteNomeController,
                      decoration: const InputDecoration(
                        labelText: 'Nome do Restaurante',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: restauranteDescricaoController,
                      decoration: const InputDecoration(
                        labelText: 'Descrição',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: restauranteEnderecoController,
                      decoration: const InputDecoration(
                        labelText: 'Endereço',
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      controller: restauranteSenhaController,
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
                            RegisterRestauranteSubmitted(
                              username:
                              restauranteUsernameController.text,
                              nome:
                              restauranteNomeController.text,
                              descricao:
                              restauranteDescricaoController.text,
                              endereco:
                              restauranteEnderecoController.text,
                              senha:
                              restauranteSenhaController.text,
                            ),
                          );
                        },
                        child: widget.loading
                            ? const CircularProgressIndicator()
                            : const Text('Cadastrar Restaurante'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}