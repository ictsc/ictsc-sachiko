import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/config/palette.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/router/guard/admin_route_guard.dart';
import 'package:ictsc_sachiko/router/guard/auth_route_guard.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';

class App extends HookWidget {
  // This widget is the root of your application.
  final _appRouter =
      AppRouter(authGuard: AuthGuard(), adminGuard: AdminGuard());

  //, adminGuard: AdminGuard()

  @override
  Widget build(BuildContext context) {
    useProvider(auth);

    //　起動時に一度だけログイン済みかチェックする
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.read(auth.notifier).signCheck();
      });
    }, []);

    if (!useProvider(auth).isLoginChecked) {
      return Container();
    }

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Palette.themeMaterialColor,
          textTheme: Theme.of(context).textTheme),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
