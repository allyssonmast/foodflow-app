import 'package:auto_route/auto_route.dart';
import 'package:foodflow/app/config/auto_router/routes_imports.gr.dart';

import '../../modules/auth/presentation/bloc/auth_bloc.dart';
import '../../modules/auth/presentation/bloc/auth_state.dart';
import '../../modules/auth/presentation/bloc/auth_event.dart';
import '../dependence_injection/injection.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthBloc authBloc = getIt<AuthBloc>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final state = authBloc.state;

    final isLoadingOrInitial = state.maybeWhen(
      initial: () => true,
      loading: () => true,
      orElse: () => false,
    );

    if (isLoadingOrInitial) {
      authBloc.add(const AuthEvent.checkAuth());
      await Future.delayed(const Duration(milliseconds: 300));
    }

    final currentState = authBloc.state;

    currentState.when(
      initial: () => resolver.next(false),
      loading: () => resolver.next(false),
      authenticated: () => resolver.next(true),
      unauthenticated: () {
        router.replaceAll([const LoginPageRoute()]);
      },
      error: (_) {
        router.replaceAll([const LoginPageRoute()]);
      },
    );
  }
}