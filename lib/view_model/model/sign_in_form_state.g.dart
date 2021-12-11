// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInFormState _$$_SignInFormStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignInFormState',
      json,
      ($checkedConvert) {
        final val = _$_SignInFormState(
          errorMessage: $checkedConvert('error_message', (v) => v as String?),
          isLoading: $checkedConvert('is_loading', (v) => v as bool? ?? false),
          isObscurePassword: $checkedConvert(
              'is_obscure_password', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'errorMessage': 'error_message',
        'isLoading': 'is_loading',
        'isObscurePassword': 'is_obscure_password'
      },
    );

Map<String, dynamic> _$$_SignInFormStateToJson(_$_SignInFormState instance) =>
    <String, dynamic>{
      'error_message': instance.errorMessage,
      'is_loading': instance.isLoading,
      'is_obscure_password': instance.isObscurePassword,
    };
