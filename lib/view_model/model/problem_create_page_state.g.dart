// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_create_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemCreatePageState _$_$_ProblemCreatePageStateFromJson(
    Map<String, dynamic> json) {
  return _$_ProblemCreatePageState(
    isLoading: json['is_loading'] as bool? ?? false,
    isPreview: json['is_preview'] as bool? ?? false,
    problem: json['problem'] == null
        ? null
        : Problem.fromJson(json['problem'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    previousProblem: json['previous_problem'] == null
        ? null
        : Problem.fromJson(json['previous_problem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProblemCreatePageStateToJson(
        _$_ProblemCreatePageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'is_preview': instance.isPreview,
      'problem': instance.problem,
      'author': instance.author,
      'previous_problem': instance.previousProblem,
    };
