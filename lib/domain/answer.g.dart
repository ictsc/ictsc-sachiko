// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$_$_AnswerFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Answer', json, () {
    final val = _$_Answer(
      id: $checkedConvert(json, 'id', (v) => v as String),
      point: $checkedConvert(json, 'point', (v) => v as int?),
      body: $checkedConvert(json, 'body', (v) => v as String),
      userGroupId: $checkedConvert(json, 'user_group_id', (v) => v as String),
      userGroup: $checkedConvert(
          json,
          'user_group',
          (v) =>
              v == null ? null : UserGroup.fromJson(v as Map<String, dynamic>)),
      problemId: $checkedConvert(json, 'problem_id', (v) => v as String),
      updatedAt: $checkedConvert(
          json, 'updated_at', (v) => DateTime.parse(v as String)),
      createdAt: $checkedConvert(
          json, 'created_at', (v) => DateTime.parse(v as String)),
    );
    return val;
  }, fieldKeyMap: const {
    'userGroupId': 'user_group_id',
    'userGroup': 'user_group',
    'problemId': 'problem_id',
    'updatedAt': 'updated_at',
    'createdAt': 'created_at'
  });
}

Map<String, dynamic> _$_$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'point': instance.point,
      'body': instance.body,
      'user_group_id': instance.userGroupId,
      'user_group': instance.userGroup,
      'problem_id': instance.problemId,
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
