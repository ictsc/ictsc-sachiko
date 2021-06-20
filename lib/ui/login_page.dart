import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/login_form_state_notifier.dart';

import 'common/header.dart';

class LoginPage extends HookWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    useEffect(() {}, []);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 512,
              child: Form(
                key: _formKey,
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
                          controller: _userNameController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(labelText: 'パスワード'),
                          controller: _passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                _formKey.currentState?.save();

                                context
                                    .read(loginForm.notifier)
                                    .onTapLoginButton(context);

                                // context
                                //     .read(auth.notifier)
                                //     .signIn(SignInRequest(
                                //         userName: _userNameController.text,
                                //         password: _passwordController.text))
                                //     .then((_) =>
                                //         Navigator.pushNamed(context, '/'));

                                // context._client.signIn(SignInRequest(
                                //     userName: _userNameController.text,
                                //     password: _passwordController.text));
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
