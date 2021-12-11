// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInRequest _$$_SignInRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignInRequest',
      json,
      ($checkedConvert) {
        final val = _$_SignInRequest(
          name: $checkedConvert('name', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignInRequestToJson(_$_SignInRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };

_$_SignInResponse _$$_SignInResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignInResponse',
      json,
      ($checkedConvert) {
        final val = _$_SignInResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert('data',
              (v) => SignInResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignInResponseData _$$_SignInResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignInResponseData',
      json,
      ($checkedConvert) {
        final val = _$_SignInResponseData(
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignInResponseDataToJson(
        _$_SignInResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_SignOutResponse _$$_SignOutResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignOutResponse',
      json,
      ($checkedConvert) {
        final val = _$_SignOutResponse(
          code: $checkedConvert('code', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignOutResponseToJson(_$_SignOutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_SignUpRequest _$$_SignUpRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignUpRequest',
      json,
      ($checkedConvert) {
        final val = _$_SignUpRequest(
          name: $checkedConvert('name', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          userGroupId: $checkedConvert('user_group_id', (v) => v as String),
          invitationCode:
              $checkedConvert('invitation_code', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'userGroupId': 'user_group_id',
        'invitationCode': 'invitation_code'
      },
    );

Map<String, dynamic> _$$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'user_group_id': instance.userGroupId,
      'invitation_code': instance.invitationCode,
    };

_$_SignUpResponse _$$_SignUpResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignUpResponse',
      json,
      ($checkedConvert) {
        final val = _$_SignUpResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert('data',
              (v) => SignUpResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignUpResponseData _$$_SignUpResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SignUpResponseData',
      json,
      ($checkedConvert) {
        final val = _$_SignUpResponseData(
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignUpResponseDataToJson(
        _$_SignUpResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
