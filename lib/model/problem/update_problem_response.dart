import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'update_problem_response.freezed.dart';
part 'update_problem_response.g.dart';

@freezed
abstract class UpdateProblemResponse with _$UpdateProblemResponse {
  const factory UpdateProblemResponse({
    required int code,
    required Data data,
  }) = _UpdateProblemResponse;

  factory UpdateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProblemResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required Problem problem,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
