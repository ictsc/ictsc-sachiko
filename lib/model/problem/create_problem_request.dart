import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_problem_request.freezed.dart';
part 'create_problem_request.g.dart';

@freezed
abstract class CreateProblemRequest with _$CreateProblemRequest {
  const factory CreateProblemRequest({
    @Default('') String id,
    required String code,
    required String authorId,
    @Default('') String title,
    @Default('') String body,
    @Default(0) int point,
    @Default(0) int solvedCriterion,
    String? previousProblemId,
  }) = _CreateProblemRequest;

 factory CreateProblemRequest.fromJson(Map<String, dynamic> json) => _$CreateProblemRequestFromJson(json);
}