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
          textTheme: Theme.of(context).textTheme.copyWith(
                // bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
                //       fontSize: 16,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
                // headline2: Theme.of(context).textTheme.headline2?.copyWith(
                //       fontSize: 28,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
                // headline3: Theme.of(context).textTheme.headline2?.copyWith(
                //       fontSize: 26,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
                // headline4: Theme.of(context).textTheme.headline2?.copyWith(
                //       fontSize: 24,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
                // headline5: Theme.of(context).textTheme.headline2?.copyWith(
                //       fontSize: 22,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
                // headline6: Theme.of(context).textTheme.headline2?.copyWith(
                //       fontSize: 20,
                //       height: 1.3,
                //       color: Theme.of(context).textTheme.bodyText2?.color,
                //     ),
              )),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
