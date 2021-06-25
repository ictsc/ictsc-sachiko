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

    final user = authState.user;

    Widget toLoginLinkButton() {
      if (user == null) {
        return TextButton(
          onPressed: () {
            context.router.pushNamed('/login');
          },
          child: Text(
            'ログイン',
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        );
      }

      return Row(
        children: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'mypage') {
                context.router.pushNamed('/mypage');
              }

              if (value == 'logout') {
                // TODO ログアウトの処理
                context.read(auth.notifier).signOut();
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                enabled: false,
                height: 36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'チーム：${user.userGroup?.name ?? ''}',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .subtitle1!
                            .copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .color),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Divider(),
                    )
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'mypage',
                height: 36,
                child: Text(
                  'マイページ',
                  style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.bodyText2!.color),
                ),
              ),
              PopupMenuItem(
                value: 'logout',
                height: 36,
                child: Text(
                  'ログアウト',
                  style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.bodyText2!.color),
                ),
              )
            ],
            offset: const Offset(0, 48),
            child: Center(
                child: Row(
              children: [
                Text(user.displayName),
                const Icon(Icons.arrow_drop_down),
              ],
            )),
          ),
        ],
      );
    }

    return AppBar(
      // 戻るボタンを削除
      automaticallyImplyLeading: false,
      actions: [
        Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 16.0),
            // ログインページへのボタン
            child: toLoginLinkButton()),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
