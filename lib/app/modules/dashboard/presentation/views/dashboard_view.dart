import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import '../../../../config/auto_router/routes_imports.gr.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
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
                    label: 'Restaurantes', icon: Icon(Icons.fastfood_outlined)),
                NavigationDestination(
                  label: 'Pedidos',
                  icon: Icon(Icons.folder_copy),
                ),
                NavigationDestination(
                    label: 'Configuração', icon: Icon(Icons.settings_rounded)),
              ],
            ));
      },
    );
  }
}
