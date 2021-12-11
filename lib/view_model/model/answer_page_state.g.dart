// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerPageState _$$_AnswerPageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AnswerPageState',
      json,
      ($checkedConvert) {
        final val = _$_AnswerPageState(
          isLoading: $checkedConvert('is_loading', (v) => v as bool? ?? false),
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
          isLatest: $checkedConvert('is_latest', (v) => v as bool? ?? false),
          answerFilterState:
              $checkedConvert('answer_filter_state', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'isLoading': 'is_loading',
        'isLatest': 'is_latest',
        'answerFilterState': 'answer_filter_state'
      },
    );

Map<String, dynamic> _$$_AnswerPageStateToJson(_$_AnswerPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problem': instance.problem,
      'answers': instance.answers,
      'is_latest': instance.isLatest,
      'answer_filter_state': instance.answerFilterState,
    };
