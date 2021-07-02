import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'create_problem_response.freezed.dart';
part 'create_problem_response.g.dart';

@freezed
abstract class CreateProblemResponse with _$CreateProblemResponse {
  const factory CreateProblemResponse({
    required int code,
    required Data data,
  }) = _CreateProblemResponse;

 factory CreateProblemResponse.fromJson(Map<String, dynamic> json) => _$CreateProblemResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required Problem problem,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}