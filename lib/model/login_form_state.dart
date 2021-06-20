import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';
part 'login_form_state.g.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    String? errorMessage,
  }) = _LoginFormState;

  factory LoginFormState.fromJson(Map<String, dynamic> json) =>
      _$LoginFormStateFromJson(json);
}
