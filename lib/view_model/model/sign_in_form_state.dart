import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_state.freezed.dart';
part 'sign_in_form_state.g.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    String? errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool isObscurePassword,
    @Default(false) bool isValidationCheckPass,
  }) = _SignInFormState;

  factory SignInFormState.fromJson(Map<String, dynamic> json) =>
      _$SignInFormStateFromJson(json);
}
