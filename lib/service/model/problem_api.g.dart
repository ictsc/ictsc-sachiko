// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_api.dart';

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

_$_CreateProblemResponse _$_$_CreateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CreateProblemResponse(
    code: json['code'] as int,
    data: CreateProblemResponseData.fromJson(
        json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateProblemResponseToJson(
        _$_CreateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateProblemResponseData _$_$_CreateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_CreateProblemResponseData(
    problem: Problem.fromJson(json['problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateProblemResponseDataToJson(
        _$_CreateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_DeleteProblemRequest _$_$_DeleteProblemRequestFromJson(
    Map<String, dynamic> json) {
  return _$_DeleteProblemRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_DeleteProblemRequestToJson(
        _$_DeleteProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_DeleteProblemResponse _$_$_DeleteProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeleteProblemResponse(
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$_$_DeleteProblemResponseToJson(
        _$_DeleteProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_FindAllProblemResponse _$_$_FindAllProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllProblemResponse(
    code: json['code'] as int,
    data: FindAllProblemResponseData.fromJson(
        json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindAllProblemResponseToJson(
        _$_FindAllProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllProblemResponseData _$_$_FindAllProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllProblemResponseData(
    problems: (json['problems'] as List<dynamic>)
        .map((e) => Problem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FindAllProblemResponseDataToJson(
        _$_FindAllProblemResponseData instance) =>
    <String, dynamic>{
      'problems': instance.problems,
    };

_$_FindProblemRequest _$_$_FindProblemRequestFromJson(
    Map<String, dynamic> json) {
  return _$_FindProblemRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_FindProblemRequestToJson(
        _$_FindProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_FindProblemResponse _$_$_FindProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindProblemResponse(
    code: json['code'] as int,
    data:
        FindProblemResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindProblemResponseToJson(
        _$_FindProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindProblemResponseData _$_$_FindProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_FindProblemResponseData(
    problem: Problem.fromJson(json['problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindProblemResponseDataToJson(
        _$_FindProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

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

_$_UpdateProblemResponse _$_$_UpdateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateProblemResponse(
    code: json['code'] as int,
    data: UpdateProblemResponseData.fromJson(
        json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateProblemResponseToJson(
        _$_UpdateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateProblemResponseData _$_$_UpdateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateProblemResponseData(
    problem: Problem.fromJson(json['problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateProblemResponseDataToJson(
        _$_UpdateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };
