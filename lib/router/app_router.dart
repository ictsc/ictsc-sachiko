import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/router/guard/admin_route_guard.dart';
import 'package:ictsc_sachiko/router/guard/auth_route_guard.dart';
import 'package:ictsc_sachiko/ui/create_problem_page.dart';
import 'package:ictsc_sachiko/ui/home_page.dart';
import 'package:ictsc_sachiko/ui/manage_page.dart';
import 'package:ictsc_sachiko/ui/manage_problem_answer_list_page.dart';
import 'package:ictsc_sachiko/ui/manage_problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/ui/problem_page.dart';
import 'package:ictsc_sachiko/ui/profile_page.dart';
import 'package:ictsc_sachiko/ui/sign_in_page.dart';
import 'package:ictsc_sachiko/ui/sign_up_page.dart';
import 'package:ictsc_sachiko/ui/user_list_page.dart';

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
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/login',
      page: SignInPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/signup',
      page: SignUpPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/profile',
      guards: [AuthGuard],
      page: ProfilePage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/problems',
      guards: [AuthGuard],
      page: ProblemListPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/problems/:id',
      guards: [AuthGuard],
      page: ProblemPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/users',
      guards: [AuthGuard],
      page: UserListPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage',
      guards: [AdminGuard],
      page: ManagePage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    // TODO 問題管理に統合した
    // CustomRoute(
    //   path: '/manage/scoring',
    //   guards: [AdminGuard],
    //   page: ManageScoringPage,
    //   transitionsBuilder: fadeIn,
    // ),
    CustomRoute(
      path: '/manage/problems/:problemId/edit',
      guards: [AdminGuard],
      page: CreateProblemPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage/problems',
      guards: [AdminGuard],
      page: ManageProblemListPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    CustomRoute(
      path: '/manage/problems/:problemId/answers',
      guards: [AdminGuard],
      page: ManageProblemAnswerListPage,
      maintainState: false,
      transitionsBuilder: fadeIn,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}