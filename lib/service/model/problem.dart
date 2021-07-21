import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'problem.freezed.dart';
part 'problem.g.dart';

@freezed
class CreateProblemRequest with _$CreateProblemRequest {
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

  factory CreateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemRequestFromJson(json);
}

@freezed
class CreateProblemResponse with _$CreateProblemResponse {
  const factory CreateProblemResponse({
    required int code,
    required CreateProblemResponseData data,
  }) = _CreateProblemResponse;

  factory CreateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemResponseFromJson(json);
}

/// @nodoc
@freezed
class CreateProblemResponseData with _$CreateProblemResponseData {
  const factory CreateProblemResponseData({
    required Problem problem,
  }) = _CreateProblemResponseData;

  factory CreateProblemResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemResponseDataFromJson(json);
}
