import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/auto_router/routes_imports.gr.dart';
import '../../../../config/dependence_injection/injection.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../bloc/restaurante_bloc.dart';
import '../bloc/restaurante_event.dart';
import '../bloc/restaurante_state.dart';
import '../widgets/produto_card.dart';
import 'produto_form_page.dart';

@RoutePage()
class RestauranteDashboardPage extends StatelessWidget {
  const RestauranteDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;

    final restauranteId = authState.maybeWhen(
      authenticated: (userId, role) => userId,
      orElse: () => null,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<RestauranteBloc>()..add(LoadProdutos(restauranteId!)),
        ),

        BlocProvider.value(value: getIt<AuthBloc>()),
      ],

      child: DefaultTabController(
        length: 2,

        child: Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard Restaurante'),

            bottom: const TabBar(
              tabs: [
                Tab(text: "Produtos"),

                Tab(text: "Pedidos"),
              ],
            ),

            actions: [
              IconButton(
                onPressed: () async {
                  context.read<AuthBloc>().add(const AuthEvent.logout());

                  context.router.replaceAll([const LoginPageRoute()]);
                },

                icon: const Icon(Icons.logout),
              ),
            ],
          ),

          floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,

                    builder: (_) => BlocProvider.value(
                      value: context.read<RestauranteBloc>(),

                      child: const ProdutoFormDialog(),
                    ),
                  );
                },

                child: const Icon(Icons.add),
              );
            },
          ),

          body: BlocBuilder<RestauranteBloc, RestauranteState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),

                loading: () => const Center(child: CircularProgressIndicator()),

                success: () => const SizedBox(),

                error: (message) => Center(child: Text(message)),

                loaded: (produtos, pedidos) {
                  return TabBarView(
                    children: [
                      RefreshIndicator(
                        onRefresh: () async {
                          context.read<RestauranteBloc>().add(
                            LoadProdutos(restauranteId!),
                          );
                        },

                        child: produtos.isEmpty
                            ? ListView(
                                children: const [
                                  SizedBox(height: 300),

                                  Center(
                                    child: Text('Nenhum produto cadastrado'),
                                  ),
                                ],
                              )
                            : ListView.builder(
                                itemCount: produtos.length,

                                itemBuilder: (context, index) {
                                  final produto = produtos[index];

                                  return ProdutoCard(
                                    produto: produto,

                                    onTap: () {
                                      showDialog(
                                        context: context,

                                        builder: (_) => BlocProvider.value(
                                          value: context
                                              .read<RestauranteBloc>(),

                                          child: ProdutoFormDialog(
                                            produto: produto,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                      ),

                      RefreshIndicator(
                        onRefresh: () async {
                          context.read<RestauranteBloc>().add(
                            LoadProdutos(restauranteId!),
                          );
                        },

                        child: pedidos.isEmpty
                            ? ListView(
                                children: const [
                                  SizedBox(height: 300),

                                  Center(child: Text('Nenhum pedido recebido')),
                                ],
                              )
                            : ListView.builder(
                                padding: const EdgeInsets.all(12),

                                itemCount: pedidos.length,

                                itemBuilder: (_, index) {
                                  final pedido = pedidos[index];

                                  return Card(
                                    child: ListTile(
                                      title: Text(pedido.clienteNome),

                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [
                                          const SizedBox(height: 4),

                                          Text("Pedido #${pedido.id}"),

                                          Text(pedido.status),
                                        ],
                                      ),

                                      trailing: Text(
                                        "R\$ ${pedido.valorTotal.toStringAsFixed(2)}",
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
