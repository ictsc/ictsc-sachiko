import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
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

  Function() onTapLoginButton(BuildContext context) => () {
        formKey.currentState?.save();

        ref
            .read(auth.notifier)
            .signIn(const SignInRequest(userName: 'name', password: 'password'))
            .then((_) => context.router.pushNamed('/'));
      };
}

final loginForm =
    StateNotifierProvider.autoDispose<LoginFormStateNotifier, LoginFormState>(
  (refs) => LoginFormStateNotifier(const LoginFormState(), refs),
);
