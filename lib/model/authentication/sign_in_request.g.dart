// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInRequest _$_$_SignInRequestFromJson(Map<String, dynamic> json) {
  return _$_SignInRequest(
    userName: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignInRequestToJson(_$_SignInRequest instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'password': instance.password,
    };
