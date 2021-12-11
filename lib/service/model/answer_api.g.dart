// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAnswerRequest _$$_CreateAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateAnswerRequest',
      json,
      ($checkedConvert) {
        final val = _$_CreateAnswerRequest(
          userGroupId: $checkedConvert('user_group_id', (v) => v as String),
          problemId: $checkedConvert('problem_id', (v) => v as String),
          body: $checkedConvert('body', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'userGroupId': 'user_group_id',
        'problemId': 'problem_id'
      },
    );

Map<String, dynamic> _$$_CreateAnswerRequestToJson(
        _$_CreateAnswerRequest instance) =>
    <String, dynamic>{
      'user_group_id': instance.userGroupId,
      'problem_id': instance.problemId,
      'body': instance.body,
    };

_$_CreateAnswerResponse _$$_CreateAnswerResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateAnswerResponse',
      json,
      ($checkedConvert) {
        final val = _$_CreateAnswerResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  CreateAnswerResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CreateAnswerResponseToJson(
        _$_CreateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateAnswerResponseData _$$_CreateAnswerResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CreateAnswerResponseData',
      json,
      ($checkedConvert) {
        final val = _$_CreateAnswerResponseData(
          answer: $checkedConvert(
              'answer', (v) => Answer.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CreateAnswerResponseDataToJson(
        _$_CreateAnswerResponseData instance) =>
    <String, dynamic>{
      'answer': instance.answer,
    };

_$_FindAllAnswerRequest _$$_FindAllAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindAllAnswerRequest',
      json,
      ($checkedConvert) {
        final val = _$_FindAllAnswerRequest(
          problemId: $checkedConvert('problem_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'problemId': 'problem_id'},
    );

Map<String, dynamic> _$$_FindAllAnswerRequestToJson(
        _$_FindAllAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
    };

_$_FindAllAnswerResponse _$$_FindAllAnswerResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindAllAnswerResponse',
      json,
      ($checkedConvert) {
        final val = _$_FindAllAnswerResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) => FindAllAnswerResponseData.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindAllAnswerResponseToJson(
        _$_FindAllAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllAnswerResponseData _$$_FindAllAnswerResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FindAllAnswerResponseData',
      json,
      ($checkedConvert) {
        final val = _$_FindAllAnswerResponseData(
          answers: $checkedConvert(
              'answers',
              (v) => (v as List<dynamic>)
                  .map((e) => Answer.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FindAllAnswerResponseDataToJson(
        _$_FindAllAnswerResponseData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
    };

_$_UpdateAnswerRequest _$$_UpdateAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateAnswerRequest',
      json,
      ($checkedConvert) {
        final val = _$_UpdateAnswerRequest(
          problemId: $checkedConvert('problem_id', (v) => v as String),
          answerId: $checkedConvert('answer_id', (v) => v as String),
          point: $checkedConvert('point', (v) => v as int?),
          body: $checkedConvert('body', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'problemId': 'problem_id', 'answerId': 'answer_id'},
    );

Map<String, dynamic> _$$_UpdateAnswerRequestToJson(
        _$_UpdateAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
      'answer_id': instance.answerId,
      'point': instance.point,
      'body': instance.body,
    };

_$_UpdateAnswerResponse _$$_UpdateAnswerResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateAnswerResponse',
      json,
      ($checkedConvert) {
        final val = _$_UpdateAnswerResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  UpdateAnswerResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateAnswerResponseToJson(
        _$_UpdateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateAnswerResponseData _$$_UpdateAnswerResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateAnswerResponseData',
      json,
      ($checkedConvert) {
        final val = _$_UpdateAnswerResponseData(
          answer: $checkedConvert(
              'answer', (v) => Answer.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateAnswerResponseDataToJson(
        _$_UpdateAnswerResponseData instance) =>
    <String, dynamic>{
      'answer': instance.answer,
    };
