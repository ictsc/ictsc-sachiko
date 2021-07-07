// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Problem _$_$_ProblemFromJson(Map<String, dynamic> json) {
  return _$_Problem(
    id: json['id'] as String? ?? '',
    code: json['code'] as String,
    authorId: json['author_id'] as String,
    title: json['title'] as String? ?? '',
    body: json['body'] as String? ?? '',
    point: json['point'] as int? ?? 0,
    solvedCriterion: json['solved_criterion'] as int? ?? 0,
    previousProblemId: json['previous_problem_id'] as String?,
    updatedAt: DateTime.parse(json['updated_at'] as String),
    createdAt: DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_ProblemToJson(_$_Problem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'author_id': instance.authorId,
      'title': instance.title,
      'body': instance.body,
      'point': instance.point,
      'solved_criterion': instance.solvedCriterion,
      'previous_problem_id': instance.previousProblemId,
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
