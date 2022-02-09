import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/auth.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/sign_up_form_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SignUpPageStateNotifier extends StateNotifier<SignUpFormState>
    with LocatorMixin {
  SignUpPageStateNotifier(SignUpFormState state, this.ref) : super(state);

  final ProviderReference ref;

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String get errorMessage {
    return state.errorMessage ?? '';
  }

  String? nameValidator(String? text) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      state = state.copyWith(isNameValidatePass: (text?.length ?? 0) >= 3);
    });
    return null;
  }

  String? passwordValidator(String? text) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      state = state.copyWith(isPasswordValidatePass: (text?.length ?? 0) >= 8);
    });
    return null;
  }

  Function()? onTapSignUpButton(BuildContext context) {
    if (state.isLoading) {
      return null;
    }

    if (!state.isNameValidatePass || !state.isPasswordValidatePass) {
      return null;
    }

    return () {
      state = state.copyWith(isLoading: true);

      // クエリから取得
      final invitationCode =
          context.router.current.queryParams.getString('invitation_code', '');
      final userGroupId =
          context.router.current.queryParams.getString('user_group_id', '');

      // フォームの保存
      formKey.currentState?.save();

      ref
          .read(authStateProvider.notifier)
          .signUp(
            SignUpRequest(
              name: nameController.text,
              password: passwordController.text,
              userGroupId: userGroupId,
              invitationCode: invitationCode,
            ),
          )
          .then(
            (response) => response.when(
              success: (_) {
                state = state.copyWith(errorMessage: '');

                // ページを飛ばす
                context.router.pushNamed('/login');
              },
              failure: (error) {
                final message = error.maybeWhen(
                  requestError: (_) {
                    var tmpMessage = '';
                    if (RegExp(
                      "Error:Field validation for 'Name' failed on the 'required' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += 'ユーザー名は必須項目です。\n';
                    }

                    if (RegExp(
                      "Error:Field validation for 'Password' failed on the 'required' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += 'パスワードは必須項目です。\n';
                    }

                    if (RegExp(
                      "Error:Field validation for 'Password' failed on the 'min' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += 'パスワードは8文字以上必要です。\n';
                    }

                    if (RegExp(
                      "Error:Field validation for 'UserGroupID' failed on the 'required' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += '無効なユーザーグループです。\n';
                    }

                    if (RegExp(
                      "Error:Field validation for 'UserGroupID' failed on the 'uuid' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += '無効なユーザーグループです。\n';
                    }

                    if (RegExp(
                      "Error:Field validation for 'InvitationCode' failed on the 'required' tag",
                    ).hasMatch(_.message)) {
                      tmpMessage += '無効な招待コードです。\n';
                    }

                    // "error":"Key: 'CreateUserRequest.UserGroupID' Error:Field validation for 'UserGroupID' failed on the 'required' tag\nKey: 'CreateUserRequest.InvitationCode' Error:Field validation for 'InvitationCode' failed on the 'required' tag"}
                    return tmpMessage;
                  },
                  orElse: () {
                    return error.errorMessage;
                  },
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
