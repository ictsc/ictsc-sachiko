// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserRequest _$_$_UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateUserRequest', json, () {
    final val = _$_UpdateUserRequest(
      id: $checkedConvert(json, 'id', (v) => v as String),
      displayName: $checkedConvert(json, 'display_name', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'displayName': 'display_name'});
}

Map<String, dynamic> _$_$_UpdateUserRequestToJson(
        _$_UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
    };

_$_UpdateUserResponse _$_$_UpdateUserResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateUserResponse', json, () {
    final val = _$_UpdateUserResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => UpdateUserResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateUserResponseToJson(
        _$_UpdateUserResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateUserResponseData _$_$_UpdateUserResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateUserResponseData', json, () {
    final val = _$_UpdateUserResponseData(
      user: $checkedConvert(
          json, 'user', (v) => User.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateUserResponseDataToJson(
        _$_UpdateUserResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
