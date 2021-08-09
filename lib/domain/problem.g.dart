// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Problem _$_$_ProblemFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Problem', json, () {
    final val = _$_Problem(
      id: $checkedConvert(json, 'id', (v) => v as String?) ?? '',
      code: $checkedConvert(json, 'code', (v) => v as String),
      authorId: $checkedConvert(json, 'author_id', (v) => v as String),
      title: $checkedConvert(json, 'title', (v) => v as String?) ?? '',
      body: $checkedConvert(json, 'body', (v) => v as String?) ?? '',
      point: $checkedConvert(json, 'point', (v) => v as int?) ?? 0,
      solvedCriterion:
          $checkedConvert(json, 'solved_criterion', (v) => v as int?) ?? 0,
      previousProblemId:
          $checkedConvert(json, 'previous_problem_id', (v) => v as String?),
      updatedAt: $checkedConvert(
          json, 'updated_at', (v) => DateTime.parse(v as String)),
      createdAt: $checkedConvert(
          json, 'created_at', (v) => DateTime.parse(v as String)),
    );
    return val;
  }, fieldKeyMap: const {
    'authorId': 'author_id',
    'solvedCriterion': 'solved_criterion',
    'previousProblemId': 'previous_problem_id',
    'updatedAt': 'updated_at',
    'createdAt': 'created_at'
  });
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
