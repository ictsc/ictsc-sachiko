// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpRequest _$_$_SignUpRequestFromJson(Map<String, dynamic> json) {
  return _$_SignUpRequest(
    userName: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'password': instance.password,
    };
