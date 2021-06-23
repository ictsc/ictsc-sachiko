import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/router/app_auth_page.dart';
import 'package:ictsc_sachiko/router/auth_route_guard.dart';
import 'package:ictsc_sachiko/ui/home_page.dart';
import 'package:ictsc_sachiko/ui/login_page.dart';
import 'package:ictsc_sachiko/ui/my_page.dart';

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
      page: LoginPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/mypage',
      guards: [AuthGuard],
      page: MyPage,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      page: AppAuthPage,
      transitionsBuilder: fadeIn,
    ),
  ],
)
class $AppRouter {}
