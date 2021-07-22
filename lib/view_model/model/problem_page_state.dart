import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'problem_page_state.freezed.dart';
part 'problem_page_state.g.dart';

@freezed
class ProblemPageState with _$ProblemPageState {
  const factory ProblemPageState({
    @Default(false) bool isLoading,
    Problem? problem
  }) = _ProblemPageState;

 factory ProblemPageState.fromJson(Map<String, dynamic> json) => _$ProblemPageStateFromJson(json);
}