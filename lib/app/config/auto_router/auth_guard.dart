import 'package:auto_route/auto_route.dart';
import 'package:foodflow/app/config/auto_router/routes_imports.gr.dart';

import '../../modules/auth/presentation/bloc/auth_bloc.dart';
import '../../modules/auth/presentation/bloc/auth_state.dart';
import '../dependence_injection/injection.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthBloc authBloc = getIt<AuthBloc>();

  @override
  void onNavigation(
      NavigationResolver resolver,
      StackRouter router,
      ) {
    final isAuthenticated = authBloc.state.maybeWhen(
      authenticated: (role) => true,
      orElse: () => false,
    );

    if (isAuthenticated) {
      router.push(const LoginPageRoute());
    } else {
      resolver.next();
    }
  }
}