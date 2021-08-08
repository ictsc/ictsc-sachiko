// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerPageState _$_$_AnswerPageStateFromJson(Map<String, dynamic> json) {
  return _$_AnswerPageState(
    isLoading: json['is_loading'] as bool? ?? false,
    problem: json['problem'] == null
        ? null
        : Problem.fromJson(json['problem'] as Map<String, dynamic>),
    answers: (json['answers'] as List<dynamic>?)
            ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_AnswerPageStateToJson(_$_AnswerPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'problem': instance.problem,
      'answers': instance.answers,
    };
