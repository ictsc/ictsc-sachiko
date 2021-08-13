import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/answer.dart';
import 'package:ictsc_sachiko/domain/problem.dart';

part 'answer_page_state.freezed.dart';
part 'answer_page_state.g.dart';

@freezed
class AnswerPageState with _$AnswerPageState {
  const factory AnswerPageState({
    @Default(false) bool isLoading,
    Problem? problem,
    @Default([]) List<Answer> answers,
    @Default(true) bool isLatest,
  }) = _AnswerPageState;

 factory AnswerPageState.fromJson(Map<String, dynamic> json) => _$AnswerPageStateFromJson(json);
}