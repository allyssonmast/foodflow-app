import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/restaurante_bloc.dart';
import '../../bloc/restaurante_state.dart';

@RoutePage()
class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestauranteBloc, RestauranteState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),

          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),

          loaded: (restaurantes) {
            return ListView.builder(
              itemCount: restaurantes.length,
              itemBuilder: (_, i) {
                final r = restaurantes[i];

                return Card(
                  child: ListTile(
                    title: Text(r.nome),
                    subtitle: Text(r.descricao),
                  ),
                );
              },
            );
          },

          error: (message) => Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}
