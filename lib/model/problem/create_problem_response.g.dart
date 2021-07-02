// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_problem_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProblemResponse _$_$_CreateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CreateProblemResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CreateProblemResponseToJson(
        _$_CreateProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    problem: Problem.fromJson(json['problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'problem': instance.problem,
    };
