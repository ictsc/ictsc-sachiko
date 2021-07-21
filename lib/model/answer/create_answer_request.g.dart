// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_answer_request.dart';

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
