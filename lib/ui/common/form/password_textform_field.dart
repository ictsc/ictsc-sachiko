import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordTextFormField extends HookWidget {


  @override
  Widget build(BuildContext context) {
    final isObscurePassword = useState(false);

    return TextFormField(
      // obscureText: !state.isObscurePassword,
      decoration: InputDecoration(
          labelText: 'パスワード',
          // suffixIcon:
          // provider.suffixObscurePasswordIconButton
      ),
      // controller: provider.passwordController,
      // TODO 登録ページで使い回す予定
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: provider.passwordValidator(),
    );
  }

}