import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/auto_router/routes_imports.gr.dart';
import '../../../../config/dependence_injection/injection.dart';

import '../../../restaurants/presentation/bloc/restaurante_bloc.dart';
import '../../../restaurants/presentation/bloc/restaurante_event.dart';
import '../../../settings/presentation/bloc/cliente_bloc.dart';
import '../../../settings/presentation/bloc/cliente_event.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestauranteBloc>(
          create: (_) => getIt<RestauranteBloc>()
            ..add(const RestauranteEvent.load()),
        ),

        BlocProvider<ClienteBloc>(
          create: (_) => getIt<ClienteBloc>()
            ..add(const ClienteEvent.load()),
        ),


        // BlocProvider<OrdersBloc>(
        //   create: (_) => getIt<OrdersBloc>(),
        // ),
      ],
      child: AutoTabsRouter(
        routes: const [
          RestaurantsPageRoute(),
          OrdersPageRoute(),
          SettingsPageRoute(),
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            body: child,
            bottomNavigationBar: NavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: tabsRouter.setActiveIndex,
              destinations: const [
                NavigationDestination(
                  label: 'Restaurantes',
                  icon: Icon(Icons.fastfood_outlined),
                ),
                NavigationDestination(
                  label: 'Pedidos',
                  icon: Icon(Icons.folder_copy),
                ),
                NavigationDestination(
                  label: 'Configuração',
                  icon: Icon(Icons.settings_rounded),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}