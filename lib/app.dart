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

    // アプリの設定を取得 なければ ユーザーのダークモードの設定取得
    final isDark = app.isDark ??
        WidgetsBinding.instance?.window.platformBrightness == Brightness.dark;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: const bool.hasEnvironment('APP_TITLE')
          ? const String.fromEnvironment('APP_TITLE')
          : 'ICTSC Score Server',
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : null,
        primaryColor: Palette.themeColor,
        primarySwatch: Palette.themeMaterialColor,
        textTheme: TextTheme(
          bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: 16, height: 1.5, color: isDark ? Colors.white : null),
          caption: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(fontSize: 14, color: isDark ? Colors.grey : null),
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
