// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Problem _$$_ProblemFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Problem',
      json,
      ($checkedConvert) {
        final val = _$_Problem(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          code: $checkedConvert('code', (v) => v as String),
          authorId: $checkedConvert('author_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          body: $checkedConvert('body', (v) => v as String? ?? ''),
          point: $checkedConvert('point', (v) => v as int? ?? 0),
          solvedCriterion:
              $checkedConvert('solved_criterion', (v) => v as int? ?? 0),
          previousProblemId:
              $checkedConvert('previous_problem_id', (v) => v as String?),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          unchecked: $checkedConvert('unchecked', (v) => v as int?),
          uncheckedNearOverdue:
              $checkedConvert('unchecked_near_overdue', (v) => v as int?),
          uncheckedOverdue:
              $checkedConvert('unchecked_overdue', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'solvedCriterion': 'solved_criterion',
        'previousProblemId': 'previous_problem_id',
        'updatedAt': 'updated_at',
        'createdAt': 'created_at',
        'uncheckedNearOverdue': 'unchecked_near_overdue',
        'uncheckedOverdue': 'unchecked_overdue'
      },
    );

Map<String, dynamic> _$$_ProblemToJson(_$_Problem instance) =>
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
      'unchecked': instance.unchecked,
      'unchecked_near_overdue': instance.uncheckedNearOverdue,
      'unchecked_overdue': instance.uncheckedOverdue,
    };
