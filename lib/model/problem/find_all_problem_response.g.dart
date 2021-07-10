// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_all_problem_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindAllProblemResponse _$_$_FindAllProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FindAllProblemResponse(
    code: json['code'] as int,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FindAllProblemResponseToJson(
        _$_FindAllProblemResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    problems: (json['problems'] as List<dynamic>)
        .map((e) => Problem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'problems': instance.problems,
    };
