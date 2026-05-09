import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/dependence_injection/injection.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../bloc/orders_bloc.dart';
import '../../bloc/orders_event.dart';
import '../../bloc/orders_state.dart';

@RoutePage()
class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;

    final clienteId = authState.maybeWhen(
      authenticated: (userId, role) => userId,
      orElse: () => null,
    );

    return BlocProvider(
      create: (_) => getIt<OrdersBloc>()
        ..add(OrdersEvent.load(clienteId!)),

      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meus pedidos"),
        ),

        body: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.error != null) {
              return Center(
                child: Text(state.error!),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<OrdersBloc>().add(
                  OrdersEvent.load(clienteId!),
                );
              },

              child: state.pedidos.isEmpty
                  ? ListView(
                physics:
                const AlwaysScrollableScrollPhysics(),

                children: const [
                  SizedBox(height: 300),

                  Center(
                    child: Text(
                      "Nenhum pedido encontrado",
                    ),
                  ),
                ],
              )
                  : ListView.builder(
                padding: const EdgeInsets.all(16),

                itemCount: state.pedidos.length,

                itemBuilder: (_, index) {
                  final pedido = state.pedidos[index];

                  return Card(
                    margin: const EdgeInsets.only(
                      bottom: 12,
                    ),

                    child: ListTile(
                      title: Text(
                        pedido.restauranteNome,
                      ),

                      subtitle: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [
                          const SizedBox(height: 4),

                          Text(
                            "Status: ${pedido.status}",
                          ),

                          Text(pedido.criadoEm),
                        ],
                      ),

                      trailing: Text(
                        "R\$ ${pedido.valorTotal.toStringAsFixed(2)}",

                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}