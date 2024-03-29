import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/form/password_textform_field.dart';
import 'package:ictsc_sachiko/view_model/model/sign_in_form_state.dart';
import 'package:ictsc_sachiko/view_model/sign_in_form_state_notifier.dart';

import 'common/header.dart';

class SignInPage extends HookWidget {
  final loginForm =
      StateNotifierProvider<SignInPageStateNotifier, SignInFormState>(
    (refs) => SignInPageStateNotifier(const SignInFormState(), refs),
  );

  @override
  Widget build(BuildContext context) {
    useProvider(loginForm);

    final provider = useProvider(loginForm.notifier);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 512,
              child: Form(
                key: provider.formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
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
                        child: Text(
                          provider.errorMessage,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'ユーザー名'),
                          controller: provider.nameController,
                          onFieldSubmitted: (_) {
                            // Enter時の処理
                            WidgetsBinding.instance?.addPostFrameCallback((_) {
                              final func = provider.onTapSignInButton(context);

                              if (func != null) {
                                func();
                              }
                            });
                          },
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PasswordTextFormField(
                          controller: provider.passwordController,
                          onFieldSubmitted: (_) {
                            // Enter時の処理
                            WidgetsBinding.instance?.addPostFrameCallback((_) {
                              final func = provider.onTapSignInButton(context);

                              if (func != null) {
                                func();
                              }
                            });
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: provider.onTapSignInButton(context),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('ログイン'),
                            ),
                          ),
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
