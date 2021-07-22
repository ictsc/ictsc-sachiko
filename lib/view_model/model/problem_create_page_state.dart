import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/problem.dart';
import 'package:ictsc_sachiko/domain/user.dart';

part 'problem_create_page_state.freezed.dart';
part 'problem_create_page_state.g.dart';

@freezed
class ProblemCreatePageState with _$ProblemCreatePageState {
  const factory ProblemCreatePageState({
    @Default(false) bool isLoading,
    @Default(false) bool isPreview,
    Problem? problem,
    User? author,
    Problem? previousProblem,
  }) = _ProblemCreatePageState;

  factory ProblemCreatePageState.fromJson(Map<String, dynamic> json) =>
      _$ProblemCreatePageStateFromJson(json);
}
