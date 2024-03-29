import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/auth.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/sign_in_form_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SignInPageStateNotifier extends StateNotifier<SignInFormState>
    with LocatorMixin {
  SignInPageStateNotifier(SignInFormState state, this.ref) : super(state);

  final ProviderReference ref;

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String get errorMessage {
    return state.errorMessage ?? '';
  }

  IconButton get suffixObscurePasswordIconButton {
    return IconButton(
      onPressed: onObscurePasswordButton(),
      icon: !state.isObscurePassword
          ? const Icon(Icons.visibility_off, size: 18)
          : const Icon(Icons.visibility, size: 18),
    );
  }

  // TODO 登録フォームで使い回す予定
  // Null Function(String? text) passwordValidator() => (String? text) {
  //   state = state.copyWith(isPasswordValidationCheckPass: text > )
  // };

  /// パスワード表示のボタン
  Function() onObscurePasswordButton() => () {
        state = state.copyWith(isObscurePassword: !state.isObscurePassword);
      };

  /// フォームをセーブしログインを送信する、失敗ならエラーメッセージを更新する。
  Function()? onTapSignInButton(BuildContext context) {
    if (state.isLoading) {
      return null;
    }

    return () {
      state = state.copyWith(isLoading: true);

      // フォームの保存
      formKey.currentState?.save();

      ref
          .read(authStateProvider.notifier)
          .signIn(
            SignInRequest(
              name: nameController.text,
              password: passwordController.text,
            ),
          )
          .then(
            (response) => response.when(
              success: (value) {
                state = state.copyWith(errorMessage: '');

                // ページを飛ばす
                context.router.pushNamed('/');
              },
              failure: (error) {
                final String message = error.when(
                  unauthorisedRequest: () => 'メールアドレスまたはパスワードが違います。',
                  requestError: (_) => 'メールアドレスまたはパスワードが違います。',
                  unexpectedError: () => '',
                );

                // エラーメッセージの処理
                state = state.copyWith(errorMessage: message);

                // パスワードのクリア
                passwordController.clear();
              },
            ),
          )
          .whenComplete(
            () => state = state.copyWith(isLoading: false),
          );
    };
  }
}

// success: () {
// state = state.copyWith(errorMessage: '');
//
// // ページを飛ばす
// context.router.pushNamed('/');
// },
// failed: (message) {
// // エラーメッセージの処理
// state = state.copyWith(errorMessage: message);
//
// // パスワードのクリア
// passwordController.clear();
// }, failure: (Error error) {  },
