import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/sign_in_form_state.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class SignInPageStateNotifier extends StateNotifier<SignInFormState>
    with LocatorMixin {
  SignInPageStateNotifier(SignInFormState state, this.ref) : super(state);

  final ProviderReference ref;

  final formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String get errorMessage {
    return state.errorMessage ?? '';
  }

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
          .read(auth.notifier)
          .signIn(SignInRequest(
            userName: userNameController.text,
            password: passwordController.text,
          ))
          .then((response) => response.when(
                success: () {
                  state = state.copyWith(errorMessage: '');

                  // ページを飛ばす
                  context.router.pushNamed('/');
                },
                failed: (message) {
                  // エラーメッセージの処理
                  state = state.copyWith(errorMessage: message);

                  // パスワードのクリア
                  passwordController.clear();
                },
              ))
          .whenComplete(
            () => state = state.copyWith(isLoading: false),
          );
    };
  }
}
