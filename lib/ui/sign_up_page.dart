import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/form/password_textform_field.dart';
import 'package:ictsc_sachiko/view_model/model/sign_up_form_state.dart';
import 'package:ictsc_sachiko/view_model/sign_up_form_state_notifier.dart';

import 'common/header.dart';

class SignUpPage extends HookWidget {
  final signUpForm =
      StateNotifierProvider<SignUpPageStateNotifier, SignUpFormState>(
          (refs) => SignUpPageStateNotifier(const SignUpFormState(), refs));

  @override
  Widget build(BuildContext context) {
    final state = useProvider(signUpForm);
    final notifier = useProvider(signUpForm.notifier);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: Center(
          child: SizedBox(
        width: 512,
        child: Form(
          key: useProvider(signUpForm.notifier).formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'ユーザー登録',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notifier.errorMessage,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'ユーザー名'),
                        controller:
                            useProvider(signUpForm.notifier).nameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: notifier.nameValidator,
                      ),
                    ),
                    Text('ユーザー名は最低3文字以上',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                            color: state.isNameValidatePass
                                ? Theme.of(context).primaryColor
                                : null)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PasswordTextFormField(
                        controller: notifier.passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: notifier.passwordValidator,
                      ),
                    ),
                    Text('パスワードは最低8文字以上',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                            color: state.isPasswordValidatePass
                                ? Theme.of(context).primaryColor
                                : null)),
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
              ],
            ),
          ),
        ),
      )),
    );
  }
}
