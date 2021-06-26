// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInResponse _$_$_SignInResponseFromJson(Map<String, dynamic> json) {
  return _$_SignInResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'user': instance.user,
    };
