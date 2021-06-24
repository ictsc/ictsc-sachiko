import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';

class AppAuthPage extends StatelessWidget {
  final Function? onComplete;

  const AppAuthPage({this.onComplete});

  @override
  Widget build(BuildContext context) {
    if (context.routeData.isActive) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        final state = context.read(auth);

        if (state.isLogin) {
          // ログイン出来たなら進む
          onComplete!();
        } else {
          // ログイン状態でなければログインページへ
          context.router.push(const SignInRoute());
        }
      });
    }

    return Scaffold(
      body: Container(),
    );
  }
}
