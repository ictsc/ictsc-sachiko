import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/router/guard/auth_route_guard.dart';
import 'package:ictsc_sachiko/ui/create_problem_page.dart';
import 'package:ictsc_sachiko/ui/home_page.dart';
import 'package:ictsc_sachiko/ui/my_page.dart';
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
      path: '/mypage',
      guards: [AuthGuard],
      page: MyPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/problems/new',
      // guards: [AdminGuard],
      page: CreateProblemPage,
      transitionsBuilder: fadeIn,
    ),
  ],
)
class $AppRouter {}
