// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_problem_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindProblemResponse _$_$_FindProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindProblemResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindProblemResponseToJson(
        _$_FindProblemResponse instance) =>
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
