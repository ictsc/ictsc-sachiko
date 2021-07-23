import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/view_model/common/app_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';

/// アプリ全体で使われるヘッダー
class Header extends HookWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Header({required this.appBar});

  @override
  Widget build(BuildContext context) {
    final authState = useProvider(authStateProvider);
    final app = useProvider(appStateProvider);
    final notifier = useProvider(appStateProvider.notifier);

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
                context.router.pushNamed('/profile');
              }

              if (value == 'logout') {
                // TODO ログアウトの処理
                context.read(authStateProvider.notifier).signOut();
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
              ),
              PopupMenuItem(
                enabled: false,
                height: 36,
                child: Row(
                  children: [
                    Text(
                      'ライト',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText2!
                          .copyWith(
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color),
                    ),
                    Switch(
                      activeColor: Theme.of(context).primaryColor,
                      value: app.isDark ?? WidgetsBinding.instance?.window.platformBrightness == Brightness.dark,
                      onChanged: (value) {
                        notifier.onSetIsPreviewButton(isPreview: value);
                        Navigator.pop(context, '');
                      },
                    ),
                    Text(
                      'ダーク',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText2!
                          .copyWith(
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color),
                    ),
                  ],
                ),
              ),
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
      leading: GestureDetector(
        onTap: () => context.router.pushAndPopUntil(const HomeRoute(),
            predicate: (route) => route.isFirst),
        child: SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              './dummy-logo-white.svg',
              semanticsLabel: 'ictsc logo',
            ),
          ),
        ),
      ),
      leadingWidth: 150,
      actions: [
        if (user?.userGroup?.isFullAccess ?? false)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('/manage');
              },
              child: const Text(
                '管理者ページ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
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
