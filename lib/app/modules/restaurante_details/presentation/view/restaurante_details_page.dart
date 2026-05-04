import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/dependence_injection/injection.dart';
import '../../../restaurants/domain/model/restaurante_model.dart';
import '../bloc/restaurante_detalhe_bloc.dart';
import '../bloc/restaurante_detalhe_event.dart';
import '../bloc/restaurante_detalhe_state.dart';

@RoutePage()
class RestauranteDetalhePage extends StatelessWidget {
  final RestauranteModel restaurante;

  const RestauranteDetalhePage({
    super.key,
    required this.restaurante,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestauranteDetalheBloc>(
          create: (_) => getIt<RestauranteDetalheBloc>()
            ..add( RestauranteDetalheEvent.load(restaurante.id)),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text(restaurante.nome)),

        body: BlocBuilder<RestauranteDetalheBloc, RestauranteDetalheState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: state.produtos.length,
                    itemBuilder: (_, i) {
                      final produto = state.produtos[i];
                      final qtd = state.carrinho[produto.id]?.quantidade ?? 0;

                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      produto.nome,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(produto.descricao),
                                    const SizedBox(height: 8),
                                    Text(
                                      "R\$ ${produto.preco.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.remove_circle),
                                    onPressed: qtd == 0
                                        ? null
                                        : () {
                                            context
                                                .read<RestauranteDetalheBloc>()
                                                .add(
                                                  RestauranteDetalheEvent.removeItem(
                                                    produto,
                                                  ),
                                                );
                                          },
                                  ),

                                  Text(
                                    "$qtd",
                                    style: const TextStyle(fontSize: 16),
                                  ),

                                  IconButton(
                                    icon: const Icon(Icons.add_circle),
                                    onPressed: () {
                                      context.read<RestauranteDetalheBloc>().add(
                                        RestauranteDetalheEvent.addItem(produto),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                _CarrinhoFooter(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CarrinhoFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestauranteDetalheBloc, RestauranteDetalheState>(
      builder: (context, state) {
        final totalItens = state.totalItens;
        final totalPreco = state.totalPreco;

        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Itens: $totalItens"),
                  Text(
                    "R\$ ${totalPreco.toStringAsFixed(2)}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: totalItens == 0
                      ? null
                      : () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Ir para checkout")),
                          );
                        },
                  child: const Text("Concluir compra"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
