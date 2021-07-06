import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'problem_list_page_state.freezed.dart';
part 'problem_list_page_state.g.dart';

@freezed
class ProblemListPageState with _$ProblemListPageState {
  const factory ProblemListPageState({
    @Default(false) bool isLoading,
    @Default([]) List<Problem> problems,
  }) = _ProblemListPageState;

 factory ProblemListPageState.fromJson(Map<String, dynamic> json) => _$ProblemListPageStateFromJson(json);
}