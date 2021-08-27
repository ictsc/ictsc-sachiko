import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordTextFormField extends HookWidget {
  final TextEditingController controller;
  final AutovalidateMode? autovalidateMode;
  final Null Function(String? text)? validator;

  const PasswordTextFormField(
      {required this.controller, this.autovalidateMode, this.validator});

  @override
  Widget build(BuildContext context) {
    final isObscurePassword = useState(false);

    return TextFormField(
      obscureText: !isObscurePassword.value,
      decoration: InputDecoration(
        labelText: 'パスワード',
        suffixIcon: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              isObscurePassword.value = !isObscurePassword.value;
            },
            child: !isObscurePassword.value
                ? const Icon(Icons.visibility_off, size: 18)
                : const Icon(Icons.visibility, size: 18),
          ),
        ),
        // provider.suffixObscurePasswordIconButton
        // TODO 登録ページで使い回す予定
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        // validator: provider.passwordValidator(),
      ),
      controller: controller,
      // TODO 登録ページで使い回す予定
      autovalidateMode: autovalidateMode,
      validator: validator,
    );
  }
}
