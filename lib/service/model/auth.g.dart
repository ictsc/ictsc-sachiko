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
