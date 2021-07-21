// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemPageState _$_$_ProblemPageStateFromJson(Map<String, dynamic> json) {
  return _$_ProblemPageState(
    isLoading: json['is_loading'] as bool? ?? false,
    problem: json['problem'] == null
        ? null
        : Problem.fromJson(json['problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProblemPageStateToJson(
        _$_ProblemPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problem': instance.problem,
    };
