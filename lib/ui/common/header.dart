import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/authentication_state_notifier.dart';

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
            Navigator.pushNamed(context, '/login');
          } else {
            // TODO ログアウトの処理
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
            padding: const EdgeInsets.only(right: 8.0),
            // ログインページへのボタン
            child: toLoginLinkButton()),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
