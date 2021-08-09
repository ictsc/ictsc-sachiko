// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProblemRequest _$_$_CreateProblemRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_CreateProblemRequest', json, () {
    final val = _$_CreateProblemRequest(
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
    );
    return val;
  }, fieldKeyMap: const {
    'authorId': 'author_id',
    'solvedCriterion': 'solved_criterion',
    'previousProblemId': 'previous_problem_id'
  });
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
  return $checkedNew(r'_$_CreateProblemResponse', json, () {
    final val = _$_CreateProblemResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => CreateProblemResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_CreateProblemResponseToJson(
        _$_CreateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateProblemResponseData _$_$_CreateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_CreateProblemResponseData', json, () {
    final val = _$_CreateProblemResponseData(
      problem: $checkedConvert(
          json, 'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_CreateProblemResponseDataToJson(
        _$_CreateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_DeleteProblemRequest _$_$_DeleteProblemRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_DeleteProblemRequest', json, () {
    final val = _$_DeleteProblemRequest(
      id: $checkedConvert(json, 'id', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_DeleteProblemRequestToJson(
        _$_DeleteProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_DeleteProblemResponse _$_$_DeleteProblemResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_DeleteProblemResponse', json, () {
    final val = _$_DeleteProblemResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_DeleteProblemResponseToJson(
        _$_DeleteProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_FindAllProblemResponse _$_$_FindAllProblemResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindAllProblemResponse', json, () {
    final val = _$_FindAllProblemResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(
          json,
          'data',
          (v) =>
              FindAllProblemResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindAllProblemResponseToJson(
        _$_FindAllProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllProblemResponseData _$_$_FindAllProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindAllProblemResponseData', json, () {
    final val = _$_FindAllProblemResponseData(
      problems: $checkedConvert(
          json,
          'problems',
          (v) => (v as List<dynamic>)
              .map((e) => Problem.fromJson(e as Map<String, dynamic>))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindAllProblemResponseDataToJson(
        _$_FindAllProblemResponseData instance) =>
    <String, dynamic>{
      'problems': instance.problems,
    };

_$_FindProblemRequest _$_$_FindProblemRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindProblemRequest', json, () {
    final val = _$_FindProblemRequest(
      id: $checkedConvert(json, 'id', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindProblemRequestToJson(
        _$_FindProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_FindProblemResponse _$_$_FindProblemResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindProblemResponse', json, () {
    final val = _$_FindProblemResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => FindProblemResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindProblemResponseToJson(
        _$_FindProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindProblemResponseData _$_$_FindProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindProblemResponseData', json, () {
    final val = _$_FindProblemResponseData(
      problem: $checkedConvert(
          json, 'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindProblemResponseDataToJson(
        _$_FindProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_UpdateProblemRequest _$_$_UpdateProblemRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateProblemRequest', json, () {
    final val = _$_UpdateProblemRequest(
      id: $checkedConvert(json, 'id', (v) => v as String),
      authorId: $checkedConvert(json, 'author_id', (v) => v as String),
      title: $checkedConvert(json, 'title', (v) => v as String?) ?? '',
      body: $checkedConvert(json, 'body', (v) => v as String?) ?? '',
      point: $checkedConvert(json, 'point', (v) => v as int?) ?? 0,
      solvedCriterion:
          $checkedConvert(json, 'solved_criterion', (v) => v as int?) ?? 0,
      previousProblemId:
          $checkedConvert(json, 'previous_problem_id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'authorId': 'author_id',
    'solvedCriterion': 'solved_criterion',
    'previousProblemId': 'previous_problem_id'
  });
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
  return $checkedNew(r'_$_UpdateProblemResponse', json, () {
    final val = _$_UpdateProblemResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => UpdateProblemResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateProblemResponseToJson(
        _$_UpdateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateProblemResponseData _$_$_UpdateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateProblemResponseData', json, () {
    final val = _$_UpdateProblemResponseData(
      problem: $checkedConvert(
          json, 'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateProblemResponseDataToJson(
        _$_UpdateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };
