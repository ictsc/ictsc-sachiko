// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_User', json, () {
    final val = _$_User(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      displayName: $checkedConvert(json, 'display_name', (v) => v as String),
      userGroupId: $checkedConvert(json, 'user_group_id', (v) => v as String),
      createdAt: $checkedConvert(
          json, 'created_at', (v) => DateTime.parse(v as String)),
      updatedAt: $checkedConvert(
          json, 'updated_at', (v) => DateTime.parse(v as String)),
      userGroup: $checkedConvert(
          json,
          'user_group',
          (v) =>
              v == null ? null : UserGroup.fromJson(v as Map<String, dynamic>)),
      isReadOnly: $checkedConvert(json, 'is_read_only', (v) => v as bool),
    );
    return val;
  }, fieldKeyMap: const {
    'displayName': 'display_name',
    'userGroupId': 'user_group_id',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
    'userGroup': 'user_group',
    'isReadOnly': 'is_read_only'
  });
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'user_group_id': instance.userGroupId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_group': instance.userGroup,
      'is_read_only': instance.isReadOnly,
    };
