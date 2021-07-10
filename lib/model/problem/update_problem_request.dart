import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_problem_request.freezed.dart';
part 'update_problem_request.g.dart';

@freezed
abstract class UpdateProblemRequest with _$UpdateProblemRequest {
  const factory UpdateProblemRequest({
    required String id,
    required String authorId,
    @Default('') String title,
    @Default('') String body,
    @Default(0) int point,
    @Default(0) int solvedCriterion,
    String? previousProblemId,
  }) = _UpdateProblemRequest;

  factory UpdateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProblemRequestFromJson(json);
}
