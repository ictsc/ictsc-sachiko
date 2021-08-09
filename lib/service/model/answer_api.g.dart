// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAnswerRequest _$_$_CreateAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_CreateAnswerRequest', json, () {
    final val = _$_CreateAnswerRequest(
      problemId: $checkedConvert(json, 'problem_id', (v) => v as String),
      body: $checkedConvert(json, 'body', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'problemId': 'problem_id'});
}

Map<String, dynamic> _$_$_CreateAnswerRequestToJson(
        _$_CreateAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
      'body': instance.body,
    };

_$_CreateAnswerResponse _$_$_CreateAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_CreateAnswerResponse', json, () {
    final val = _$_CreateAnswerResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => CreateAnswerResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_CreateAnswerResponseToJson(
        _$_CreateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateAnswerResponseData _$_$_CreateAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_CreateAnswerResponseData', json, () {
    final val = _$_CreateAnswerResponseData(
      answer: $checkedConvert(
          json, 'answer', (v) => Answer.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_CreateAnswerResponseDataToJson(
        _$_CreateAnswerResponseData instance) =>
    <String, dynamic>{
      'answer': instance.answer,
    };

_$_FindAllAnswerRequest _$_$_FindAllAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindAllAnswerRequest', json, () {
    final val = _$_FindAllAnswerRequest(
      problemId: $checkedConvert(json, 'problem_id', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'problemId': 'problem_id'});
}

Map<String, dynamic> _$_$_FindAllAnswerRequestToJson(
        _$_FindAllAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
    };

_$_FindAllAnswerResponse _$_$_FindAllAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindAllAnswerResponse', json, () {
    final val = _$_FindAllAnswerResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => FindAllAnswerResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindAllAnswerResponseToJson(
        _$_FindAllAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllAnswerResponseData _$_$_FindAllAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_FindAllAnswerResponseData', json, () {
    final val = _$_FindAllAnswerResponseData(
      answers: $checkedConvert(
          json,
          'answers',
          (v) => (v as List<dynamic>)
              .map((e) => Answer.fromJson(e as Map<String, dynamic>))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_FindAllAnswerResponseDataToJson(
        _$_FindAllAnswerResponseData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
    };

_$_UpdateAnswerRequest _$_$_UpdateAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateAnswerRequest', json, () {
    final val = _$_UpdateAnswerRequest(
      problemId: $checkedConvert(json, 'problem_id', (v) => v as String),
      answerId: $checkedConvert(json, 'answer_id', (v) => v as String),
      point: $checkedConvert(json, 'point', (v) => v as int?),
      body: $checkedConvert(json, 'body', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'problemId': 'problem_id', 'answerId': 'answer_id'});
}

Map<String, dynamic> _$_$_UpdateAnswerRequestToJson(
        _$_UpdateAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
      'answer_id': instance.answerId,
      'point': instance.point,
      'body': instance.body,
    };

_$_UpdateAnswerResponse _$_$_UpdateAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateAnswerResponse', json, () {
    final val = _$_UpdateAnswerResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => UpdateAnswerResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateAnswerResponseToJson(
        _$_UpdateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateAnswerResponseData _$_$_UpdateAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_UpdateAnswerResponseData', json, () {
    final val = _$_UpdateAnswerResponseData(
      answer: $checkedConvert(
          json, 'answer', (v) => Answer.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UpdateAnswerResponseDataToJson(
        _$_UpdateAnswerResponseData instance) =>
    <String, dynamic>{
      'answer': instance.answer,
    };
