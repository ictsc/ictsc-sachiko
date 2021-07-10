// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_problem_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProblemResponse _$_$_UpdateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateProblemResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateProblemResponseToJson(
        _$_UpdateProblemResponse instance) =>
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
