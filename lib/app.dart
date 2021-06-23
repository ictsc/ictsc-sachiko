import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/router/auth_route_guard.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
