// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAnswerRequest _$_$_CreateAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return _$_CreateAnswerRequest(
    problemId: json['problem_id'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$_$_CreateAnswerRequestToJson(
        _$_CreateAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
      'body': instance.body,
    };

_$_CreateAnswerResponse _$_$_CreateAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CreateAnswerResponse(
    code: json['code'] as int,
    data:
        CreateAnswerResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateAnswerResponseToJson(
        _$_CreateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_CreateAnswerResponseData _$_$_CreateAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_CreateAnswerResponseData(
    answer: Answer.fromJson(json['answer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateAnswerResponseDataToJson(
        _$_CreateAnswerResponseData instance) =>
    <String, dynamic>{
      'answer': instance.answer,
    };

_$_FindAllAnswerRequest _$_$_FindAllAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllAnswerRequest(
    problemId: json['problem_id'] as String,
  );
}

Map<String, dynamic> _$_$_FindAllAnswerRequestToJson(
        _$_FindAllAnswerRequest instance) =>
    <String, dynamic>{
      'problem_id': instance.problemId,
    };

_$_FindAllAnswerResponse _$_$_FindAllAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllAnswerResponse(
    code: json['code'] as int,
    data: FindAllAnswerResponseData.fromJson(
        json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindAllAnswerResponseToJson(
        _$_FindAllAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_FindAllAnswerResponseData _$_$_FindAllAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllAnswerResponseData(
    answers: (json['answers'] as List<dynamic>)
        .map((e) => Answer.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FindAllAnswerResponseDataToJson(
        _$_FindAllAnswerResponseData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
    };
