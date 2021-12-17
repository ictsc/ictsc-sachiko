import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/problem.dart';

part 'problem_list_page_state.freezed.dart';
part 'problem_list_page_state.g.dart';

@freezed
class ProblemListPageState with _$ProblemListPageState {
  const factory ProblemListPageState({
    @Default(false) bool isLoading,
    @Default([]) List<Problem> problems,
    Problem? problem,
    // @Default(true) bool isAutoLoad,
  }) = _ProblemListPageState;

  factory ProblemListPageState.fromJson(Map<String, dynamic> json) =>
      _$ProblemListPageStateFromJson(json);
}
