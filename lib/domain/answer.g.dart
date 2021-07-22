// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$_$_AnswerFromJson(Map<String, dynamic> json) {
  return _$_Answer(
    id: json['id'] as String,
    point: json['point'] as int,
    group: json['group'] as String,
    problemId: json['problem_id'] as String,
    updatedAt: DateTime.parse(json['updated_at'] as String),
    createdAt: DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'point': instance.point,
      'group': instance.group,
      'problem_id': instance.problemId,
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
