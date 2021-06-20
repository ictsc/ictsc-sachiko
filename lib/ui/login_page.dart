import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/login_form_state_notifier.dart';

import 'common/header.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.read(loginForm.notifier);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 512,
              child: Form(
                key: state.formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'ログイン',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'ユーザー名'),
                          controller: state.userNameController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(labelText: 'パスワード'),
                          controller: state.passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                state.onTapLoginButton(context);
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('ログイン'),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
