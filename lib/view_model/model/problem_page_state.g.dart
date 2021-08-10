// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemPageState _$_$_ProblemPageStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_ProblemPageState', json, () {
    final val = _$_ProblemPageState(
      isLoading:
          $checkedConvert(json, 'is_loading', (v) => v as bool?) ?? false,
      problem: $checkedConvert(
          json,
          'problem',
          (v) =>
              v == null ? null : Problem.fromJson(v as Map<String, dynamic>)),
      answers: $checkedConvert(
              json,
              'answers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
    );
    return val;
  }, fieldKeyMap: const {'isLoading': 'is_loading'});
}

Map<String, dynamic> _$_$_ProblemPageStateToJson(
        _$_ProblemPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problem': instance.problem,
      'answers': instance.answers,
    };
