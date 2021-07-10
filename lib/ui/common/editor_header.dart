import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// アプリ全体で使われるヘッダー
class EditorHeader extends HookWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const EditorHeader({required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
