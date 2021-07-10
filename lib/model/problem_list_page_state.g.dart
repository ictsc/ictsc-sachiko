// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemListPageState _$_$_ProblemListPageStateFromJson(
    Map<String, dynamic> json) {
  return _$_ProblemListPageState(
    isLoading: json['is_loading'] as bool? ?? false,
    problems: (json['problems'] as List<dynamic>?)
            ?.map((e) => Problem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ProblemListPageStateToJson(
        _$_ProblemListPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problems': instance.problems,
    };
