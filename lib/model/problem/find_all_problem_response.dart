import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../problem.dart';

part 'find_all_problem_response.freezed.dart';
part 'find_all_problem_response.g.dart';

@freezed
abstract class FindAllProblemResponse with _$FindAllProblemResponse {
  const factory FindAllProblemResponse({
    required int code,
    required Data data,
  }) = _FindAllProblemResponse;

  factory FindAllProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$FindAllProblemResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required List<Problem> problems,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
