// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/create_problem_page.dart' as _i10;
import '../ui/home_page.dart' as _i5;
import '../ui/my_page.dart' as _i9;
import '../ui/problem_list_page.dart' as _i11;
import '../ui/sign_in_page.dart' as _i7;
import '../ui/sign_up_page.dart' as _i8;
import 'app_router.dart' as _i6;
import 'guard/admin_route_guard.dart' as _i4;
import 'guard/auth_route_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.adminGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  final _i4.AdminGuard adminGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    SignInRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SignInPage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    SignUpRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SignUpPage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    MyRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.MyPage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    CreateProblemRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.CreateProblemPage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ProblemListRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ProblemListPage();
        },
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/login'),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i1.RouteConfig(MyRoute.name, path: '/mypage', guards: [authGuard]),
        _i1.RouteConfig(CreateProblemRoute.name,
            path: '/manage/problems/new', guards: [adminGuard]),
        _i1.RouteConfig(ProblemListRoute.name,
            path: '/manage/problems', guards: [adminGuard])
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
  const CreateProblemRoute() : super(name, path: '/manage/problems/new');

  static const String name = 'CreateProblemRoute';
}

class ProblemListRoute extends _i1.PageRouteInfo {
  const ProblemListRoute() : super(name, path: '/manage/problems');

  static const String name = 'ProblemListRoute';
}
