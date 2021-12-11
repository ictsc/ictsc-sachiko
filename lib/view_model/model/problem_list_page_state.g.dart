// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemListPageState _$$_ProblemListPageStateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProblemListPageState',
      json,
      ($checkedConvert) {
        final val = _$_ProblemListPageState(
          isLoading: $checkedConvert('is_loading', (v) => v as bool? ?? false),
          problems: $checkedConvert(
              'problems',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Problem.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
          problem: $checkedConvert(
              'problem',
              (v) => v == null
                  ? null
                  : Problem.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'isLoading': 'is_loading'},
    );

Map<String, dynamic> _$$_ProblemListPageStateToJson(
        _$_ProblemListPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problems': instance.problems,
      'problem': instance.problem,
    };
