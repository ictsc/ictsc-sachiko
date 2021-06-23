import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';

/// アプリ全体で使われるヘッダー
class Header extends HookWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Header({required this.appBar});

  @override
  Widget build(BuildContext context) {
    final authState = useProvider(auth);

    Widget toLoginLinkButton() {
      return TextButton(
        onPressed: () {
          if (!authState.isLogin) {
            context.router.pushNamed('/login');
          } else {
            // TODO ログアウトの処理
            context.read(auth.notifier).signOut();
          }
        },
        child: Text(
          !authState.isLogin ? 'ログイン' : 'ログアウト',
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      );
    }

    return AppBar(
      // 戻るボタンを削除
      automaticallyImplyLeading: false,
      actions: [
        Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 16.0),
            // ログインページへのボタン
            child: toLoginLinkButton()),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
