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
