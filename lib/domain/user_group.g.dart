// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserGroup _$$_UserGroupFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_UserGroup',
      json,
      ($checkedConvert) {
        final val = _$_UserGroup(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          organization: $checkedConvert('organization', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          isFullAccess: $checkedConvert('is_full_access', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'isFullAccess': 'is_full_access'
      },
    );

Map<String, dynamic> _$$_UserGroupToJson(_$_UserGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organization': instance.organization,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_full_access': instance.isFullAccess,
    };
