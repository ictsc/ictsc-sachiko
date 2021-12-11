// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProblemPageState _$$_ProblemPageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProblemPageState',
      json,
      ($checkedConvert) {
        final val = _$_ProblemPageState(
          isLoading: $checkedConvert('is_loading', (v) => v as bool? ?? false),
          isFetchLoading:
              $checkedConvert('is_fetch_loading', (v) => v as bool? ?? false),
          problem: $checkedConvert(
              'problem',
              (v) => v == null
                  ? null
                  : Problem.fromJson(v as Map<String, dynamic>)),
          answers: $checkedConvert(
              'answers',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
      fieldKeyMap: const {
        'isLoading': 'is_loading',
        'isFetchLoading': 'is_fetch_loading'
      },
    );

Map<String, dynamic> _$$_ProblemPageStateToJson(_$_ProblemPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'is_fetch_loading': instance.isFetchLoading,
      'problem': instance.problem,
      'answers': instance.answers,
    };
