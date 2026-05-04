// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:foodflow/app/modules/auth/presentation/pages/login_page.dart'
    as _i2;
import 'package:foodflow/app/modules/dashboard/presentation/views/dashboard_view.dart'
    as _i1;
import 'package:foodflow/app/modules/orders/presentation/views/page/orders_page.dart'
    as _i3;
import 'package:foodflow/app/modules/restaurante_details/presentation/view/restaurante_details_page.dart'
    as _i4;
import 'package:foodflow/app/modules/restaurants/domain/model/restaurante_model.dart'
    as _i9;
import 'package:foodflow/app/modules/restaurants/presentation/views/page/restaurants_page.dart'
    as _i5;
import 'package:foodflow/app/modules/settings/presentation/views/page/settings_page.dart'
    as _i6;

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i7.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i7.PageRouteInfo>? children})
    : super(DashboardPageRoute.name, initialChildren: children);

  static const String name = 'DashboardPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginPageRoute extends _i7.PageRouteInfo<void> {
  const LoginPageRoute({List<_i7.PageRouteInfo>? children})
    : super(LoginPageRoute.name, initialChildren: children);

  static const String name = 'LoginPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginPage();
    },
  );
}

/// generated route for
/// [_i3.OrdersPage]
class OrdersPageRoute extends _i7.PageRouteInfo<void> {
  const OrdersPageRoute({List<_i7.PageRouteInfo>? children})
    : super(OrdersPageRoute.name, initialChildren: children);

  static const String name = 'OrdersPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.OrdersPage();
    },
  );
}

/// generated route for
/// [_i4.RestauranteDetalhePage]
class RestauranteDetalhePageRoute
    extends _i7.PageRouteInfo<RestauranteDetalhePageRouteArgs> {
  RestauranteDetalhePageRoute({
    _i8.Key? key,
    required _i9.RestauranteModel restaurante,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         RestauranteDetalhePageRoute.name,
         args: RestauranteDetalhePageRouteArgs(
           key: key,
           restaurante: restaurante,
         ),
         initialChildren: children,
       );

  static const String name = 'RestauranteDetalhePageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RestauranteDetalhePageRouteArgs>();
      return _i4.RestauranteDetalhePage(
        key: args.key,
        restaurante: args.restaurante,
      );
    },
  );
}

class RestauranteDetalhePageRouteArgs {
  const RestauranteDetalhePageRouteArgs({this.key, required this.restaurante});

  final _i8.Key? key;

  final _i9.RestauranteModel restaurante;

  @override
  String toString() {
    return 'RestauranteDetalhePageRouteArgs{key: $key, restaurante: $restaurante}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RestauranteDetalhePageRouteArgs) return false;
    return key == other.key && restaurante == other.restaurante;
  }

  @override
  int get hashCode => key.hashCode ^ restaurante.hashCode;
}

/// generated route for
/// [_i5.RestaurantsPage]
class RestaurantsPageRoute extends _i7.PageRouteInfo<void> {
  const RestaurantsPageRoute({List<_i7.PageRouteInfo>? children})
    : super(RestaurantsPageRoute.name, initialChildren: children);

  static const String name = 'RestaurantsPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.RestaurantsPage();
    },
  );
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsPageRoute extends _i7.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i7.PageRouteInfo>? children})
    : super(SettingsPageRoute.name, initialChildren: children);

  static const String name = 'SettingsPageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SettingsPage();
    },
  );
}
