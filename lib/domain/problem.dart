import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem.freezed.dart';
part 'problem.g.dart';

@freezed
abstract class Problem with _$Problem {
  const factory Problem({
    @Default('') String id,
    required String code,
    required String authorId,
    @Default('') String title,
    @Default('') String body,
    @Default(0) int point,
    @Default(0) int solvedCriterion,
    String? previousProblemId,
    required DateTime updatedAt,
    required DateTime createdAt,
    int? unchecked,
    int? uncheckedNearOverdue,
    int? uncheckedOverdue,
  }) = _Problem;

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);
}

// "unchecked":0,"unchecked_near_overdue":0,"unchecked_overdue":0}