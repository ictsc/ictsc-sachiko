// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerPageState _$_$_AnswerPageStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_AnswerPageState', json, () {
    final val = _$_AnswerPageState(
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

Map<String, dynamic> _$_$_AnswerPageStateToJson(_$_AnswerPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problem': instance.problem,
      'answers': instance.answers,
    };
