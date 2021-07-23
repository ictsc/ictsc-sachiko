import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/config/palette.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/router/guard/admin_route_guard.dart';
import 'package:ictsc_sachiko/router/guard/auth_route_guard.dart';
import 'package:ictsc_sachiko/view_model/common/app_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';

class App extends HookWidget {
  // This widget is the root of your application.
  final _appRouter =
      AppRouter(authGuard: AuthGuard(), adminGuard: AdminGuard());

  @override
  Widget build(BuildContext context) {
    useProvider(authStateProvider);
    final app = useProvider(appStateProvider);

    //　起動時に一度だけログイン済みかチェックする
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.read(authStateProvider.notifier).signCheck();
      });
    }, []);

    if (!useProvider(authStateProvider).isLoginChecked) {
      return Container();
    }

    final isDark = app.isDark ?? false;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : null,
        primaryColor: Palette.themeColor,
        primarySwatch: Palette.themeMaterialColor,
        textTheme: TextTheme(
              bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 16,
                    height: 1.5,
                color: isDark ? Colors.white : null
                  ),
              caption: Theme.of(context).textTheme.caption?.copyWith(
                    fontSize: 14,
                color: isDark ? Colors.grey : null
                  ),
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
            ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
