import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/view_model/common/app_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:url_launcher/link.dart';

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
        return Link(
          uri: Uri.parse('/#/login'),
          builder: (_, __) => TextButton(
            onPressed: () {
              context.router.pushNamed('/login');
            },
            child: Text(
              'ログイン',
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
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
                context.read(authStateProvider.notifier).signOut(context);
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
                child: Link(
                  uri: Uri.parse('/#/profile'),
                  builder: (_, __) => Text(
                    'マイページ',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText2!
                        .copyWith(
                            color:
                                Theme.of(context).textTheme.bodyText2!.color),
                  ),
                ),
              ),
              PopupMenuItem(
                enabled: false,
                height: 36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ダークモード',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText2!
                          .copyWith(
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color),
                    ),
                    Switch(
                      activeColor: Theme.of(context).primaryColor,
                      value: app.isDark ??
                          WidgetsBinding.instance?.window.platformBrightness ==
                              Brightness.dark,
                      onChanged: (value) {
                        notifier.onSetIsPreviewButton(isPreview: value);
                        Navigator.pop(context, '');
                      },
                    ),
                  ],
                ),
              ),
              const PopupMenuItem(
                enabled: false,
                height: 8,
                child: Divider(),
              ),
              PopupMenuItem(
                value: 'logout',
                height: 36,
                child: Column(
                  children: [
                    Text(
                      'ログアウト',
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
        child: Row(
          children: [
            SizedBox(
              height: 72,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  './ictsc-logo-white.svg',
                  semanticsLabel: 'ictsc logo',
                ),
              ),
            ),
            const Gap(24),
          ],
        ),
      ),
      leadingWidth: 350,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Link(
            uri: Uri.parse('/#/'),
            builder: (_, __) => TextButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('/');
              },
              child: const Text(
                'トップ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        if (user != null)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Link(
              uri: Uri.parse('/#/problems'),
              builder: (_, __) => TextButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/problems');
                },
                child: const Text(
                  '問題',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        if (user != null)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Link(
              uri: Uri.parse('/#/scoreboard'),
              builder: (_, __) => TextButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/scoreboard');
                },
                child: const Text(
                  '順位',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        if (user != null)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Link(
              uri: Uri.parse('/#/users'),
              builder: (_, __) => TextButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/users');
                },
                child: const Text(
                  '参加者',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        if (user?.userGroup?.isFullAccess ?? false)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Link(
              uri: Uri.parse('/#/manage'),
              builder: (_, __) => TextButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/manage');
                },
                child: const Text(
                  '管理',
                  style: TextStyle(color: Colors.white),
                ),
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
