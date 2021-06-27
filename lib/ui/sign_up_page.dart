import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/sign_up_form_state.dart';
import 'package:ictsc_sachiko/view_model/sign_up_form_state_notifier.dart';

import 'common/header.dart';

class SignUpPage extends HookWidget {
  final signUpForm =
      StateNotifierProvider<SignUpPageStateNotifier, SignUpFormState>(
          (refs) => SignUpPageStateNotifier(const SignUpFormState(), refs));

  @override
  Widget build(BuildContext context) {
    useProvider(signUpForm);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: Center(
          child: SizedBox(
        width: 512,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '登録',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  useProvider(signUpForm.notifier).errorMessage,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'ユーザー名'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'パスワード'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: useProvider(signUpForm.notifier)
                          .onTapSignUpButton(context),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('登録'),
                      )),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
