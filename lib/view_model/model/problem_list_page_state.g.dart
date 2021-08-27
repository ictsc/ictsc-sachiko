// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemListPageState _$_$_ProblemListPageStateFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_ProblemListPageState', json, () {
    final val = _$_ProblemListPageState(
      isLoading:
          $checkedConvert(json, 'is_loading', (v) => v as bool?) ?? false,
      problems: $checkedConvert(
              json,
              'problems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Problem.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
      problem: $checkedConvert(
          json,
          'problem',
          (v) =>
              v == null ? null : Problem.fromJson(v as Map<String, dynamic>)),
      isAutoLoad:
          $checkedConvert(json, 'is_auto_load', (v) => v as bool?) ?? true,
    );
    return val;
  }, fieldKeyMap: const {
    'isLoading': 'is_loading',
    'isAutoLoad': 'is_auto_load'
  });
}

Map<String, dynamic> _$_$_ProblemListPageStateToJson(
        _$_ProblemListPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problems': instance.problems,
      'problem': instance.problem,
      'is_auto_load': instance.isAutoLoad,
    };
