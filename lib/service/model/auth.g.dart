// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInRequest _$_$_SignInRequestFromJson(Map<String, dynamic> json) {
  return _$_SignInRequest(
    name: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignInRequestToJson(_$_SignInRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };

_$_SignInResponse _$_$_SignInResponseFromJson(Map<String, dynamic> json) {
  return _$_SignInResponse(
    code: json['code'] as int,
    data: SignInResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignInResponseData _$_$_SignInResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_SignInResponseData(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInResponseDataToJson(
        _$_SignInResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_SignOutResponse _$_$_SignOutResponseFromJson(Map<String, dynamic> json) {
  return _$_SignOutResponse(
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$_$_SignOutResponseToJson(_$_SignOutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_SignUpRequest _$_$_SignUpRequestFromJson(Map<String, dynamic> json) {
  return _$_SignUpRequest(
    name: json['name'] as String,
    password: json['password'] as String,
    userGroupId: json['user_group_id'] as String,
    invitationCode: json['invitation_code'] as String,
  );
}

Map<String, dynamic> _$_$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'user_group_id': instance.userGroupId,
      'invitation_code': instance.invitationCode,
    };

_$_SignUpResponse _$_$_SignUpResponseFromJson(Map<String, dynamic> json) {
  return _$_SignUpResponse(
    code: json['code'] as int,
    data: SignUpResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignUpResponseData _$_$_SignUpResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_SignUpResponseData(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignUpResponseDataToJson(
        _$_SignUpResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
