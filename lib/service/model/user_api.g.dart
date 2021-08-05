// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserRequest _$_$_UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return _$_UpdateUserRequest(
    id: json['id'] as String,
    displayName: json['display_name'] as String?,
  );
}

Map<String, dynamic> _$_$_UpdateUserRequestToJson(
        _$_UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
    };

_$_UpdateUserResponse _$_$_UpdateUserResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateUserResponse(
    code: json['code'] as int,
    data: UpdateUserResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateUserResponseToJson(
        _$_UpdateUserResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateUserResponseData _$_$_UpdateUserResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateUserResponseData(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateUserResponseDataToJson(
        _$_UpdateUserResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
