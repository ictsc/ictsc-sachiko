// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/create_problem_page.dart' as _i9;
import '../ui/home_page.dart' as _i4;
import '../ui/my_page.dart' as _i8;
import '../ui/sign_in_page.dart' as _i6;
import '../ui/sign_up_page.dart' as _i7;
import 'app_router.dart' as _i5;
import 'guard/auth_route_guard.dart' as _i3;

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
    SignUpRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SignUpPage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false),
    MyRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.MyPage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false),
    CreateProblemRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.CreateProblemPage();
        },
        transitionsBuilder: _i5.fadeIn,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/login'),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i1.RouteConfig(MyRoute.name, path: '/mypage', guards: [authGuard]),
        _i1.RouteConfig(CreateProblemRoute.name, path: '/problems/new')
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

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/signup');

  static const String name = 'SignUpRoute';
}

class MyRoute extends _i1.PageRouteInfo {
  const MyRoute() : super(name, path: '/mypage');

  static const String name = 'MyRoute';
}

class CreateProblemRoute extends _i1.PageRouteInfo {
  const CreateProblemRoute() : super(name, path: '/problems/new');

  static const String name = 'CreateProblemRoute';
}
