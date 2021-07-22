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

  Function()? onTapSignUpButton(BuildContext context) {
    if (state.isLoading) {
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
          .signUp(SignUpRequest(
              name: nameController.text,
              password: passwordController.text,
              userGroupId: userGroupId,
              invitationCode: invitationCode))
          .then((response) => response.when(success: (_) {
                state = state.copyWith(errorMessage: '');

                // ページを飛ばす
                context.router.pushNamed('/login');
              }, failure: (error) {
                // エラーメッセージの処理
                state = state.copyWith(errorMessage: error.errorMessage);

                // パスワードのクリア
                passwordController.clear();
              }))
          .whenComplete(
            () => state = state.copyWith(isLoading: false),
          );
    };
  }
}
