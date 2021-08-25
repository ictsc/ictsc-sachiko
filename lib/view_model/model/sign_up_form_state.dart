import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_form_state.freezed.dart';
part 'sign_up_form_state.g.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    String? errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool isPasswordValidatePass,
    @Default(false) bool isNameValidatePass,
  }) = _SignUpFormState;

  factory SignUpFormState.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormStateFromJson(json);
}
