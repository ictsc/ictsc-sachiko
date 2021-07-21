// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAnswerResponse _$_$_CreateAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CreateAnswerResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateAnswerResponseToJson(
        _$_CreateAnswerResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    answer: Answer.fromJson(json['answer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'answer': instance.answer,
    };
