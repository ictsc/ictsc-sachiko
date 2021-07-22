import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authState = useProvider(authStateProvider);

    final user = authState.user;

    if (user == null) {
      return Container();
    }

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: const Text('HOME'),
    );
  }
}
