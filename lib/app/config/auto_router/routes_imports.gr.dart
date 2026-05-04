// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:foodflow/app/modules/dashboard/presentation/views/dashboard_view.dart'
    as _i1;
import 'package:foodflow/app/modules/orders/presentation/views/page/orders_page.dart'
    as _i2;
import 'package:foodflow/app/modules/restaurants/presentation/views/page/restaurants_page.dart'
    as _i3;
import 'package:foodflow/app/modules/settings/presentation/views/page/settings_page.dart'
    as _i4;

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i5.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i5.PageRouteInfo>? children})
    : super(DashboardPageRoute.name, initialChildren: children);

  static const String name = 'DashboardPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.OrdersPage]
class OrdersPageRoute extends _i5.PageRouteInfo<void> {
  const OrdersPageRoute({List<_i5.PageRouteInfo>? children})
    : super(OrdersPageRoute.name, initialChildren: children);

  static const String name = 'OrdersPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.OrdersPage();
    },
  );
}

/// generated route for
/// [_i3.RestaurantsPage]
class RestaurantsPageRoute extends _i5.PageRouteInfo<void> {
  const RestaurantsPageRoute({List<_i5.PageRouteInfo>? children})
    : super(RestaurantsPageRoute.name, initialChildren: children);

  static const String name = 'RestaurantsPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.RestaurantsPage();
    },
  );
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsPageRoute extends _i5.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i5.PageRouteInfo>? children})
    : super(SettingsPageRoute.name, initialChildren: children);

  static const String name = 'SettingsPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsPage();
    },
  );
}
