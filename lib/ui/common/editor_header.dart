import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// アプリ全体で使われるヘッダー
class EditorHeader extends HookWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const EditorHeader({required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          // TODO 問題一覧に飛ばす予定
          context.router.pushNamed('/manage/problems');
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
