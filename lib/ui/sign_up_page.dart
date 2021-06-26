import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';

class SignUpPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
      ),
      body: Center(
          child: SizedBox(
        width: 512,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '登録',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
