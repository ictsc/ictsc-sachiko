import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_problem_response.freezed.dart';
part 'delete_problem_response.g.dart';

@freezed
class DeleteProblemResponse with _$DeleteProblemResponse {
  const factory DeleteProblemResponse({
    required int code,
  }) = _DeleteProblemResponse;

  factory DeleteProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProblemResponseFromJson(json);
}
