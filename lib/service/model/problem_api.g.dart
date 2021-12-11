// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProblemRequest _$$_CreateProblemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateProblemRequest',
      json,
      ($checkedConvert) {
        final val = _$_CreateProblemRequest(
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
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'solvedCriterion': 'solved_criterion',
        'previousProblemId': 'previous_problem_id'
      },
    );

Map<String, dynamic> _$$_CreateProblemRequestToJson(
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

_$_CreateProblemResponse _$$_CreateProblemResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateProblemResponse',
      json,
      ($checkedConvert) {
        final val = _$_CreateProblemResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) => CreateProblemResponseData.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CreateProblemResponseToJson(
        _$_CreateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateProblemResponseData _$$_CreateProblemResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateProblemResponseData',
      json,
      ($checkedConvert) {
        final val = _$_CreateProblemResponseData(
          problem: $checkedConvert(
              'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CreateProblemResponseDataToJson(
        _$_CreateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_DeleteProblemRequest _$$_DeleteProblemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeleteProblemRequest',
      json,
      ($checkedConvert) {
        final val = _$_DeleteProblemRequest(
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DeleteProblemRequestToJson(
        _$_DeleteProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_DeleteProblemResponse _$$_DeleteProblemResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeleteProblemResponse',
      json,
      ($checkedConvert) {
        final val = _$_DeleteProblemResponse(
          code: $checkedConvert('code', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DeleteProblemResponseToJson(
        _$_DeleteProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_FindAllProblemResponse _$$_FindAllProblemResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindAllProblemResponse',
      json,
      ($checkedConvert) {
        final val = _$_FindAllProblemResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) => FindAllProblemResponseData.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindAllProblemResponseToJson(
        _$_FindAllProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllProblemResponseData _$$_FindAllProblemResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindAllProblemResponseData',
      json,
      ($checkedConvert) {
        final val = _$_FindAllProblemResponseData(
          problems: $checkedConvert(
              'problems',
              (v) => (v as List<dynamic>)
                  .map((e) => Problem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindAllProblemResponseDataToJson(
        _$_FindAllProblemResponseData instance) =>
    <String, dynamic>{
      'problems': instance.problems,
    };

_$_FindProblemRequest _$$_FindProblemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindProblemRequest',
      json,
      ($checkedConvert) {
        final val = _$_FindProblemRequest(
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindProblemRequestToJson(
        _$_FindProblemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_FindProblemResponse _$$_FindProblemResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindProblemResponse',
      json,
      ($checkedConvert) {
        final val = _$_FindProblemResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  FindProblemResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindProblemResponseToJson(
        _$_FindProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindProblemResponseData _$$_FindProblemResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindProblemResponseData',
      json,
      ($checkedConvert) {
        final val = _$_FindProblemResponseData(
          problem: $checkedConvert(
              'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindProblemResponseDataToJson(
        _$_FindProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_UpdateProblemRequest _$$_UpdateProblemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateProblemRequest',
      json,
      ($checkedConvert) {
        final val = _$_UpdateProblemRequest(
          id: $checkedConvert('id', (v) => v as String),
          authorId: $checkedConvert('author_id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          body: $checkedConvert('body', (v) => v as String? ?? ''),
          point: $checkedConvert('point', (v) => v as int? ?? 0),
          solvedCriterion:
              $checkedConvert('solved_criterion', (v) => v as int? ?? 0),
          previousProblemId:
              $checkedConvert('previous_problem_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'solvedCriterion': 'solved_criterion',
        'previousProblemId': 'previous_problem_id'
      },
    );

Map<String, dynamic> _$$_UpdateProblemRequestToJson(
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

_$_UpdateProblemResponse _$$_UpdateProblemResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateProblemResponse',
      json,
      ($checkedConvert) {
        final val = _$_UpdateProblemResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) => UpdateProblemResponseData.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateProblemResponseToJson(
        _$_UpdateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateProblemResponseData _$$_UpdateProblemResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateProblemResponseData',
      json,
      ($checkedConvert) {
        final val = _$_UpdateProblemResponseData(
          problem: $checkedConvert(
              'problem', (v) => Problem.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateProblemResponseDataToJson(
        _$_UpdateProblemResponseData instance) =>
    <String, dynamic>{
      'problem': instance.problem,
    };

_$_FileUploadResponse _$$_FileUploadResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FileUploadResponse',
      json,
      ($checkedConvert) {
        final val = _$_FileUploadResponse(
          id: $checkedConvert('id', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  FileUploadResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FileUploadResponseToJson(
        _$_FileUploadResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
    };

_$_FileUploadResponseData _$$_FileUploadResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FileUploadResponseData',
      json,
      ($checkedConvert) {
        final val = _$_FileUploadResponseData(
          id: $checkedConvert('id', (v) => v as String),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          userId: $checkedConvert('UserID', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'updatedAt': 'updated_at',
        'createdAt': 'created_at',
        'userId': 'UserID'
      },
    );

Map<String, dynamic> _$$_FileUploadResponseDataToJson(
        _$_FileUploadResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'UserID': instance.userId,
    };
