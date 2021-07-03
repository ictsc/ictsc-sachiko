// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$_$_AuthenticationFromJson(Map<String, dynamic> json) {
  return _$_Authentication(
    isLoginChecked: json['is_login_checked'] as bool? ?? false,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'is_login_checked': instance.isLoginChecked,
      'user': instance.user,
    };
