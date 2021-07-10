import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'find_problem_response.freezed.dart';
part 'find_problem_response.g.dart';

@freezed
abstract class FindProblemResponse with _$FindProblemResponse {
  const factory FindProblemResponse({
    required int code,
    required Data data,
  }) = _FindProblemResponse;

  factory FindProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$FindProblemResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required Problem problem,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
