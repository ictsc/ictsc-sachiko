// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
