import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/router/guard/admin_route_guard.dart';
import 'package:ictsc_sachiko/router/guard/auth_route_guard.dart';
import 'package:ictsc_sachiko/ui/create_problem_page.dart';
import 'package:ictsc_sachiko/ui/home_page.dart';
import 'package:ictsc_sachiko/ui/manage_page.dart';
import 'package:ictsc_sachiko/ui/manage_problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_page.dart';
import 'package:ictsc_sachiko/ui/profile_page.dart';
import 'package:ictsc_sachiko/ui/sign_in_page.dart';
import 'package:ictsc_sachiko/ui/sign_up_page.dart';

/// フェードインさせるウィジェット、画面切り替えで使用
Widget fadeIn(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(opacity: animation, child: child);
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      path: '/',
      page: HomePage,
      initial: true,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/login',
      page: SignInPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/signup',
      page: SignUpPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/profile',
      guards: [AuthGuard],
      page: ProfilePage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/problems',
      guards: [AuthGuard],
      page: ProblemListPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/problems/:id',
      guards: [AuthGuard],
      page: ProblemPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage',
      guards: [AdminGuard],
      page: ManagePage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage/problems/edit/:problemId',
      guards: [AdminGuard],
      page: CreateProblemPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage/problems',
      guards: [AdminGuard],
      page: ManageProblemListPage,
      transitionsBuilder: fadeIn,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
