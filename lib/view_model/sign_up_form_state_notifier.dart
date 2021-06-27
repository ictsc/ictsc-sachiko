import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';
import 'package:ictsc_sachiko/model/sign_up_form_state.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class SignUpPageStateNotifier extends StateNotifier<SignUpFormState>
    with LocatorMixin {
  SignUpPageStateNotifier(SignUpFormState state, this.ref) : super(state);

  final ProviderReference ref;

  String get errorMessage {
    return state.errorMessage ?? '';
  }

  Function()? onTapSignUpButton(BuildContext context) {
    return () {
      ref
          .read(auth.notifier)
          .signUp(SignUpRequest(
              name: '', password: '', userGroupId: '', invitationCode: ''))
          .then((response) => response.when(success: (_) {
                state = state.copyWith(errorMessage: '');

                // ページを飛ばす
              }, failure: (error) {
                // エラーメッセージの処理
                state = state.copyWith(errorMessage: error.errorMessage);

                // パスワードのクリア
                // passwordController.clear();
              }))
          .whenComplete(
            () => state = state.copyWith(isLoading: false),
          );
    };
  }
}
