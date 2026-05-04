import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/config/auto_router/routes_imports.dart';
import 'app/config/dependence_injection/injection.dart';
import 'app/modules/auth/presentation/bloc/auth_bloc.dart';
import 'app/modules/auth/presentation/bloc/auth_event.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.checkAuth()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'odoo app',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(),
          );
        },
      ),
    );
  }
}
