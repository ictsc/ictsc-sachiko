// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserGroup _$_$_UserGroupFromJson(Map<String, dynamic> json) {
  return _$_UserGroup(
    id: json['id'] as String,
    name: json['name'] as String,
    organization: json['organization'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
    isFullAccess: json['is_full_access'] as bool,
  );
}

Map<String, dynamic> _$_$_UserGroupToJson(_$_UserGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organization': instance.organization,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_full_access': instance.isFullAccess,
    };
