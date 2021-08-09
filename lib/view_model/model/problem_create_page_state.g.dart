// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_create_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemCreatePageState _$_$_ProblemCreatePageStateFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_ProblemCreatePageState', json, () {
    final val = _$_ProblemCreatePageState(
      isLoading:
          $checkedConvert(json, 'is_loading', (v) => v as bool?) ?? false,
      isPreview:
          $checkedConvert(json, 'is_preview', (v) => v as bool?) ?? false,
      problem: $checkedConvert(
          json,
          'problem',
          (v) =>
              v == null ? null : Problem.fromJson(v as Map<String, dynamic>)),
      author: $checkedConvert(json, 'author',
          (v) => v == null ? null : User.fromJson(v as Map<String, dynamic>)),
      previousProblem: $checkedConvert(
          json,
          'previous_problem',
          (v) =>
              v == null ? null : Problem.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'isLoading': 'is_loading',
    'isPreview': 'is_preview',
    'previousProblem': 'previous_problem'
  });
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
