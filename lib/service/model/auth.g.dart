// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInRequest _$_$_SignInRequestFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignInRequest', json, () {
    final val = _$_SignInRequest(
      name: $checkedConvert(json, 'name', (v) => v as String),
      password: $checkedConvert(json, 'password', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignInRequestToJson(_$_SignInRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };

_$_SignInResponse _$_$_SignInResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignInResponse', json, () {
    final val = _$_SignInResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => SignInResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignInResponseData _$_$_SignInResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignInResponseData', json, () {
    final val = _$_SignInResponseData(
      user: $checkedConvert(
          json, 'user', (v) => User.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignInResponseDataToJson(
        _$_SignInResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_SignOutResponse _$_$_SignOutResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignOutResponse', json, () {
    final val = _$_SignOutResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignOutResponseToJson(_$_SignOutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_SignUpRequest _$_$_SignUpRequestFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignUpRequest', json, () {
    final val = _$_SignUpRequest(
      name: $checkedConvert(json, 'name', (v) => v as String),
      password: $checkedConvert(json, 'password', (v) => v as String),
      userGroupId: $checkedConvert(json, 'user_group_id', (v) => v as String),
      invitationCode:
          $checkedConvert(json, 'invitation_code', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'userGroupId': 'user_group_id',
    'invitationCode': 'invitation_code'
  });
}

Map<String, dynamic> _$_$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'user_group_id': instance.userGroupId,
      'invitation_code': instance.invitationCode,
    };

_$_SignUpResponse _$_$_SignUpResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignUpResponse', json, () {
    final val = _$_SignUpResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => SignUpResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignUpResponseData _$_$_SignUpResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignUpResponseData', json, () {
    final val = _$_SignUpResponseData(
      user: $checkedConvert(
          json, 'user', (v) => User.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignUpResponseDataToJson(
        _$_SignUpResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
