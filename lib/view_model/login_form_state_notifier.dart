import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/login_form_state.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class LoginFormStateNotifier extends StateNotifier<LoginFormState>
    with LocatorMixin {
  LoginFormStateNotifier(LoginFormState state, this.ref) : super(state);

  final ProviderReference ref;

  final formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  /// フォームをセーブしログインを送信する、失敗ならエラーメッセージを更新
  Function() onTapLoginButton(BuildContext context) => () {
        formKey.currentState?.save();

        ref
            .read(auth.notifier)
            .signIn(SignInRequest(
              userName: userNameController.text,
              password: passwordController.text,
            ))
            .then((response) => response.when(
                  success: () {},
                  failed: (message) {
                    // エラーメッセージの処理
                    state = state.copyWith(errorMessage: message);
                  },
                ));
      };
}

final loginForm =
    StateNotifierProvider<LoginFormStateNotifier, LoginFormState>(
  (refs) => LoginFormStateNotifier(const LoginFormState(), refs),
);
