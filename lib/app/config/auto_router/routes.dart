part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: LoginPageRoute.page,
      path: LOGIN,
    ),
    AutoRoute(
      page: RegisterPageRoute.page,
      path: REGISTER,
    ),
    AutoRoute(

      guards: [AuthGuard()],
      page: SplashPageRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: DashboardPageRoute.page,
      path: DASHBOARD,
      initial: true,
      guards: [AuthGuard()],
      children: [
        RedirectRoute(path: '', redirectTo: RESTAURANTS),
        AutoRoute(page: RestaurantsPageRoute.page, path: RESTAURANTS),
        AutoRoute(page: OrdersPageRoute.page, path: ORDERS),
        AutoRoute(page: SettingsPageRoute.page, path: SETTINGS),
      ],
    ),
    AutoRoute(page: RestauranteDetalhePageRoute.page, path: RESTAURANT_DETAIL),
  ];
}
