// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_problem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProblemRequest _$_$_UpdateProblemRequestFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateProblemRequest(
    id: json['id'] as String,
    authorId: json['author_id'] as String,
    title: json['title'] as String? ?? '',
    body: json['body'] as String? ?? '',
    point: json['point'] as int? ?? 0,
    solvedCriterion: json['solved_criterion'] as int? ?? 0,
    previousProblemId: json['previous_problem_id'] as String?,
  );
}

Map<String, dynamic> _$_$_UpdateProblemRequestToJson(
        _$_UpdateProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'title': instance.title,
      'body': instance.body,
      'point': instance.point,
      'solved_criterion': instance.solvedCriterion,
      'previous_problem_id': instance.previousProblemId,
    };
