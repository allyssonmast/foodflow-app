import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodflow/app/modules/restaurant/presentation/page/produto_form_page.dart';

import '../../../../config/dependence_injection/injection.dart';
import '../bloc/restaurante_bloc.dart';
import '../bloc/restaurante_event.dart';
import '../bloc/restaurante_state.dart';
import '../widgets/produto_card.dart';

@RoutePage()
class RestauranteDashboardPage extends StatelessWidget {
  const RestauranteDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RestauranteBloc>()..add(LoadProdutos()),

      child: Scaffold(
        appBar: AppBar(title: const Text('Meus Produtos')),

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

              loaded: (produtos) {
                if (produtos.isEmpty) {
                  return const Center(child: Text('Nenhum produto cadastrado'));
                }

                return ListView.builder(
                  itemCount: produtos.length,

                  itemBuilder: (context, index) {
                    final produto = produtos[index];

                    return ProdutoCard(
                      produto: produto,

                      onTap: () {
                        showDialog(
                          context: context,

                          builder: (_) => BlocProvider.value(
                            value: context.read<RestauranteBloc>(),

                            child: ProdutoFormDialog(produto: produto),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
