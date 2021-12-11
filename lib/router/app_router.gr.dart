// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../ui/create_problem_page.dart' as _i10;
import '../ui/home_page.dart' as _i1;
import '../ui/manage_page.dart' as _i9;
import '../ui/manage_problem_answer_list_page.dart' as _i12;
import '../ui/manage_problem_list_page.dart' as _i11;
import '../ui/problem_list_page.dart' as _i5;
import '../ui/problem_page.dart' as _i6;
import '../ui/profile_page.dart' as _i4;
import '../ui/scoreboard_page.dart' as _i8;
import '../ui/sign_in_page.dart' as _i2;
import '../ui/sign_up_page.dart' as _i3;
import '../ui/user_list_page.dart' as _i7;
import 'app_router.dart' as _i17;
import 'guard/admin_route_guard.dart' as _i16;
import 'guard/auth_route_guard.dart' as _i15;

class AppRouter extends _i13.RootStackRouter {
  AppRouter(
      {_i14.GlobalKey<_i14.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.adminGuard})
      : super(navigatorKey);

  final _i15.AuthGuard authGuard;

  final _i16.AdminGuard adminGuard;

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.HomePage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SignInRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.SignInPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SignUpRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.SignUpPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ProfilePage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemListRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.ProblemListPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProblemRouteArgs>(
          orElse: () => ProblemRouteArgs(id: pathParams.getString('id')));
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.ProblemPage(id: args.id),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    UserListRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.UserListPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ScoreboardRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.ScoreboardPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ManageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i9.ManagePage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CreateProblemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CreateProblemRouteArgs>(
          orElse: () => CreateProblemRouteArgs(
              problemId: pathParams.optString('problemId')));
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.CreateProblemPage(problemId: args.problemId),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ManageProblemListRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i11.ManageProblemListPage(),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ManageProblemAnswerListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ManageProblemAnswerListRouteArgs>(
          orElse: () => ManageProblemAnswerListRouteArgs(
              problemId: pathParams.getString('problemId')));
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i12.ManageProblemAnswerListPage(args.problemId),
          maintainState: false,
          transitionsBuilder: _i17.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(HomeRoute.name, path: '/'),
        _i13.RouteConfig(SignInRoute.name, path: '/login'),
        _i13.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i13.RouteConfig(ProfileRoute.name,
            path: '/profile', guards: [authGuard]),
        _i13.RouteConfig(ProblemListRoute.name,
            path: '/problems', guards: [authGuard]),
        _i13.RouteConfig(ProblemRoute.name,
            path: '/problems/:id', guards: [authGuard]),
        _i13.RouteConfig(UserListRoute.name,
            path: '/users', guards: [authGuard]),
        _i13.RouteConfig(ScoreboardRoute.name,
            path: '/scoreboard', guards: [authGuard]),
        _i13.RouteConfig(ManageRoute.name,
            path: '/manage', guards: [adminGuard]),
        _i13.RouteConfig(CreateProblemRoute.name,
            path: '/manage/problems/:problemId/edit', guards: [adminGuard]),
        _i13.RouteConfig(ManageProblemListRoute.name,
            path: '/manage/problems', guards: [adminGuard]),
        _i13.RouteConfig(ManageProblemAnswerListRoute.name,
            path: '/manage/problems/:problemId/answers', guards: [adminGuard]),
        _i13.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/login');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signup');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '/profile');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i5.ProblemListPage]
class ProblemListRoute extends _i13.PageRouteInfo<void> {
  const ProblemListRoute() : super(name, path: '/problems');

  static const String name = 'ProblemListRoute';
}

/// generated route for [_i6.ProblemPage]
class ProblemRoute extends _i13.PageRouteInfo<ProblemRouteArgs> {
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

  @override
  String toString() {
    return 'ProblemRouteArgs{id: $id}';
  }
}

/// generated route for [_i7.UserListPage]
class UserListRoute extends _i13.PageRouteInfo<void> {
  const UserListRoute() : super(name, path: '/users');

  static const String name = 'UserListRoute';
}

/// generated route for [_i8.ScoreboardPage]
class ScoreboardRoute extends _i13.PageRouteInfo<void> {
  const ScoreboardRoute() : super(name, path: '/scoreboard');

  static const String name = 'ScoreboardRoute';
}

/// generated route for [_i9.ManagePage]
class ManageRoute extends _i13.PageRouteInfo<void> {
  const ManageRoute() : super(name, path: '/manage');

  static const String name = 'ManageRoute';
}

/// generated route for [_i10.CreateProblemPage]
class CreateProblemRoute extends _i13.PageRouteInfo<CreateProblemRouteArgs> {
  CreateProblemRoute({String? problemId})
      : super(name,
            path: '/manage/problems/:problemId/edit',
            args: CreateProblemRouteArgs(problemId: problemId),
            rawPathParams: {'problemId': problemId});

  static const String name = 'CreateProblemRoute';
}

class CreateProblemRouteArgs {
  const CreateProblemRouteArgs({this.problemId});

  final String? problemId;

  @override
  String toString() {
    return 'CreateProblemRouteArgs{problemId: $problemId}';
  }
}

/// generated route for [_i11.ManageProblemListPage]
class ManageProblemListRoute extends _i13.PageRouteInfo<void> {
  const ManageProblemListRoute() : super(name, path: '/manage/problems');

  static const String name = 'ManageProblemListRoute';
}

/// generated route for [_i12.ManageProblemAnswerListPage]
class ManageProblemAnswerListRoute
    extends _i13.PageRouteInfo<ManageProblemAnswerListRouteArgs> {
  ManageProblemAnswerListRoute({required String problemId})
      : super(name,
            path: '/manage/problems/:problemId/answers',
            args: ManageProblemAnswerListRouteArgs(problemId: problemId),
            rawPathParams: {'problemId': problemId});

  static const String name = 'ManageProblemAnswerListRoute';
}

class ManageProblemAnswerListRouteArgs {
  const ManageProblemAnswerListRouteArgs({required this.problemId});

  final String problemId;

  @override
  String toString() {
    return 'ManageProblemAnswerListRouteArgs{problemId: $problemId}';
  }
}
