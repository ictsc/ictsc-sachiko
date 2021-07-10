import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_problem_request.freezed.dart';
part 'find_problem_request.g.dart';

@freezed
abstract class FindProblemRequest with _$FindProblemRequest {
  const factory FindProblemRequest({
    required String id,
  }) = _FindProblemRequest;

 factory FindProblemRequest.fromJson(Map<String, dynamic> json) => _$FindProblemRequestFromJson(json);
}