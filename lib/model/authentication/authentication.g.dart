// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$_$_AuthenticationFromJson(Map<String, dynamic> json) {
  return _$_Authentication(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
