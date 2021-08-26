// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpFormState _$_$_SignUpFormStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignUpFormState', json, () {
    final val = _$_SignUpFormState(
      errorMessage: $checkedConvert(json, 'error_message', (v) => v as String?),
      isLoading:
          $checkedConvert(json, 'is_loading', (v) => v as bool?) ?? false,
      isPasswordValidatePass: $checkedConvert(
              json, 'is_password_validate_pass', (v) => v as bool?) ??
          false,
      isNameValidatePass:
          $checkedConvert(json, 'is_name_validate_pass', (v) => v as bool?) ??
              false,
    );
    return val;
  }, fieldKeyMap: const {
    'errorMessage': 'error_message',
    'isLoading': 'is_loading',
    'isPasswordValidatePass': 'is_password_validate_pass',
    'isNameValidatePass': 'is_name_validate_pass'
  });
}

Map<String, dynamic> _$_$_SignUpFormStateToJson(_$_SignUpFormState instance) =>
    <String, dynamic>{
      'error_message': instance.errorMessage,
      'is_loading': instance.isLoading,
      'is_password_validate_pass': instance.isPasswordValidatePass,
      'is_name_validate_pass': instance.isNameValidatePass,
    };
