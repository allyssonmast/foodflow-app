import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/auto_router/routes_imports.gr.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';
import '../widgets/login_form.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authenticated: (role) {
              switch (role) {
                case UserRole.restaurante:
                  context.router.replaceAll([
                    const RestauranteDashboardRoute(),
                  ]);

                  break;

                case UserRole.admin:
                case UserRole.cliente:
                  context.router.replaceAll([const DashboardPageRoute()]);

                  break;
              }
            },

            error: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },

        child: const Center(child: LoginForm()),
      ),
    );
  }
}
