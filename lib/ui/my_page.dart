import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';

class MyPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(appBar: AppBar(),),
      body: const Text('MY_PAGE'),
    );
  }
}