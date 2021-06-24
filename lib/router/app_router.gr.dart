// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/home_page.dart' as _i4;
import '../ui/my_page.dart' as _i7;
import '../ui/sign_in_page.dart' as _i6;
import 'app_auth_page.dart' as _i8;
import 'app_router.dart' as _i5;
import 'auth_route_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HomePage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false),
    SignInRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignInPage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false),
    MyRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.MyPage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false),
    AppAuthRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AppAuthRouteArgs>(
              orElse: () => const AppAuthRouteArgs());
          return _i8.AppAuthPage(onComplete: args.onComplete);
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/login'),
        _i1.RouteConfig(MyRoute.name, path: '/mypage', guards: [authGuard]),
        _i1.RouteConfig(AppAuthRoute.name, path: '/auth')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/login');

  static const String name = 'SignInRoute';
}

class MyRoute extends _i1.PageRouteInfo {
  const MyRoute() : super(name, path: '/mypage');

  static const String name = 'MyRoute';
}

class AppAuthRoute extends _i1.PageRouteInfo<AppAuthRouteArgs> {
  AppAuthRoute({Function? onComplete})
      : super(name,
            path: '/auth', args: AppAuthRouteArgs(onComplete: onComplete));

  static const String name = 'AppAuthRoute';
}

class AppAuthRouteArgs {
  const AppAuthRouteArgs({this.onComplete});

  final Function? onComplete;
}
