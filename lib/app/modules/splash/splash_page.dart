import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/config/auto_router/routes_imports.gr.dart';
import '../auth/presentation/bloc/auth_bloc.dart';
import '../auth/presentation/bloc/auth_event.dart';
import '../auth/presentation/bloc/auth_state.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    context.read<AuthBloc>().add(const AuthEvent.checkAuth());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (role) {
            switch (role) {
              case UserRole.restaurante:
                context.router.replaceAll([
                  const RestauranteDashboardPageRoute(),
                ]);

                break;

              case UserRole.admin:
              case UserRole.cliente:
                context.router.replaceAll([const DashboardPageRoute()]);

                break;
            }
          },

          unauthenticated: () {
            context.router.replaceAll([const LoginPageRoute()]);
          },
        );
      },

      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
