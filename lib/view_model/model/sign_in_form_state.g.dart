// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInFormState _$_$_SignInFormStateFromJson(Map<String, dynamic> json) {
  return _$_SignInFormState(
    errorMessage: json['error_message'] as String?,
    isLoading: json['is_loading'] as bool? ?? false,
    isObscurePassword: json['is_obscure_password'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_SignInFormStateToJson(_$_SignInFormState instance) =>
    <String, dynamic>{
      'error_message': instance.errorMessage,
      'is_loading': instance.isLoading,
      'is_obscure_password': instance.isObscurePassword,
    };
