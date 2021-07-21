import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_problem_request.freezed.dart';
part 'delete_problem_request.g.dart';

@freezed
class DeleteProblemRequest with _$DeleteProblemRequest {
  const factory DeleteProblemRequest({
    required String id,
  }) = _DeleteProblemRequest;

  factory DeleteProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteProblemRequestFromJson(json);
}
