import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/answer.dart';
import 'package:ictsc_sachiko/domain/problem.dart';

part 'problem_page_state.freezed.dart';
part 'problem_page_state.g.dart';

/// 問題ページの状態クラス。
@freezed
class ProblemPageState with _$ProblemPageState {
  const factory ProblemPageState({
    @Default(false) bool isLoading,
    @Default(false) bool isFetchLoading,
    Problem? problem,
    @Default([]) List<Answer> answers,
  }) = _ProblemPageState;

  factory ProblemPageState.fromJson(Map<String, dynamic> json) =>
      _$ProblemPageStateFromJson(json);
}
