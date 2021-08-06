// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/create_problem_page.dart' as _i13;
import '../ui/home_page.dart' as _i5;
import '../ui/manage_page.dart' as _i12;
import '../ui/manage_problem_list_page.dart' as _i14;
import '../ui/problem_list_page.dart' as _i10;
import '../ui/problem_page.dart' as _i11;
import '../ui/profile_page.dart' as _i9;
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
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    SignInRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SignInPage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    SignUpRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SignUpPage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ProfileRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ProfilePage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ProblemListRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.ProblemListPage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ProblemRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ProblemRouteArgs>(
              orElse: () => ProblemRouteArgs(id: pathParams.getString('id')));
          return _i11.ProblemPage(id: args.id);
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ManageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.ManagePage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    CreateProblemRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<CreateProblemRouteArgs>(
              orElse: () => CreateProblemRouteArgs(
                  problemId: pathParams.optString('problemId')));
          return _i13.CreateProblemPage(problemId: args.problemId);
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false),
    ManageProblemListRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i14.ManageProblemListPage();
        },
        maintainState: false,
        transitionsBuilder: _i6.fadeIn,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/login'),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i1.RouteConfig(ProfileRoute.name,
            path: '/profile', guards: [authGuard]),
        _i1.RouteConfig(ProblemListRoute.name,
            path: '/problems', guards: [authGuard]),
        _i1.RouteConfig(ProblemRoute.name,
            path: '/problems/:id', guards: [authGuard]),
        _i1.RouteConfig(ManageRoute.name,
            path: '/manage', guards: [adminGuard]),
        _i1.RouteConfig(CreateProblemRoute.name,
            path: '/manage/problems/edit/:problemId', guards: [adminGuard]),
        _i1.RouteConfig(ManageProblemListRoute.name,
            path: '/manage/problems', guards: [adminGuard]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
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

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile');

  static const String name = 'ProfileRoute';
}

class ProblemListRoute extends _i1.PageRouteInfo {
  const ProblemListRoute() : super(name, path: '/problems');

  static const String name = 'ProblemListRoute';
}

class ProblemRoute extends _i1.PageRouteInfo<ProblemRouteArgs> {
  ProblemRoute({required String id})
      : super(name,
            path: '/problems/:id',
            args: ProblemRouteArgs(id: id),
            rawPathParams: {'id': id});

  static const String name = 'ProblemRoute';
}

class ProblemRouteArgs {
  const ProblemRouteArgs({required this.id});

  final String id;
}

class ManageRoute extends _i1.PageRouteInfo {
  const ManageRoute() : super(name, path: '/manage');

  static const String name = 'ManageRoute';
}

class CreateProblemRoute extends _i1.PageRouteInfo<CreateProblemRouteArgs> {
  CreateProblemRoute({String? problemId})
      : super(name,
            path: '/manage/problems/edit/:problemId',
            args: CreateProblemRouteArgs(problemId: problemId),
            rawPathParams: {'problemId': problemId});

  static const String name = 'CreateProblemRoute';
}

class CreateProblemRouteArgs {
  const CreateProblemRouteArgs({this.problemId});

  final String? problemId;
}

class ManageProblemListRoute extends _i1.PageRouteInfo {
  const ManageProblemListRoute() : super(name, path: '/manage/problems');

  static const String name = 'ManageProblemListRoute';
}
