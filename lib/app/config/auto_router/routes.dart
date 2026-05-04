part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardPageRoute.page,
          path: DASHBOARD,
          children: [
            RedirectRoute(path: '', redirectTo: RESTAURANTS),
            AutoRoute(page: RestaurantsPageRoute.page, path: RESTAURANTS),
            AutoRoute(page: OrdersPageRoute.page, path: ORDERS),
            AutoRoute(page: SettingsPageRoute.page, path: SETTINGS),
          ],
        ),
      ];
}
