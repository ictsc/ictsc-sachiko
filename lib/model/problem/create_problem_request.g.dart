// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_problem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProblemRequest _$_$_CreateProblemRequestFromJson(
    Map<String, dynamic> json) {
  return _$_CreateProblemRequest(
    id: json['id'] as String? ?? '',
    code: json['code'] as String,
    authorId: json['author_id'] as String,
    title: json['title'] as String? ?? '',
    body: json['body'] as String? ?? '',
    point: json['point'] as int? ?? 0,
    solvedCriterion: json['solved_criterion'] as int? ?? 0,
    previousProblemId: json['previous_problem_id'] as String?,
  );
}

Map<String, dynamic> _$_$_CreateProblemRequestToJson(
        _$_CreateProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'author_id': instance.authorId,
      'title': instance.title,
      'body': instance.body,
      'point': instance.point,
      'solved_criterion': instance.solvedCriterion,
      'previous_problem_id': instance.previousProblemId,
    };
