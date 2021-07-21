import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/problem.dart';

part 'problem_api.freezed.dart';
part 'problem_api.g.dart';

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

@freezed
class DeleteProblemRequest with _$DeleteProblemRequest {
  const factory DeleteProblemRequest({
    required String id,
  }) = _DeleteProblemRequest;

  factory DeleteProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteProblemRequestFromJson(json);
}

@freezed
class DeleteProblemResponse with _$DeleteProblemResponse {
  const factory DeleteProblemResponse({
    required int code,
  }) = _DeleteProblemResponse;

  factory DeleteProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProblemResponseFromJson(json);
}

@freezed
class FindAllProblemResponse with _$FindAllProblemResponse {
  const factory FindAllProblemResponse({
    required int code,
    required FindAllProblemResponseData data,
  }) = _FindAllProblemResponse;

  factory FindAllProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$FindAllProblemResponseFromJson(json);
}

@freezed
class FindAllProblemResponseData with _$FindAllProblemResponseData {
  const factory FindAllProblemResponseData({
    required List<Problem> problems,
  }) = _FindAllProblemResponseData;

 factory FindAllProblemResponseData.fromJson(Map<String, dynamic> json) => _$FindAllProblemResponseDataFromJson(json);
}

@freezed
class FindProblemRequest with _$FindProblemRequest {
  const factory FindProblemRequest({
    required String id,
  }) = _FindProblemRequest;

  factory FindProblemRequest.fromJson(Map<String, dynamic> json) => _$FindProblemRequestFromJson(json);
}

@freezed
class FindProblemResponse with _$FindProblemResponse {
  const factory FindProblemResponse({
    required int code,
    required FindProblemResponseData data,
  }) = _FindProblemResponse;

  factory FindProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$FindProblemResponseFromJson(json);
}

@freezed
class FindProblemResponseData with _$FindProblemResponseData {
  const factory FindProblemResponseData({
    required Problem problem,
  }) = _FindProblemResponseData;

 factory FindProblemResponseData.fromJson(Map<String, dynamic> json) => _$FindProblemResponseDataFromJson(json);
}

@freezed
class UpdateProblemRequest with _$UpdateProblemRequest {
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

@freezed
class UpdateProblemResponse with _$UpdateProblemResponse {
  const factory UpdateProblemResponse({
    required int code,
    required UpdateProblemResponseData data,
  }) = _UpdateProblemResponse;

  factory UpdateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProblemResponseFromJson(json);
}

@freezed
class UpdateProblemResponseData with _$UpdateProblemResponseData {
  const factory UpdateProblemResponseData({
    required Problem problem,
  }) = _UpdateProblemResponseData;

 factory UpdateProblemResponseData.fromJson(Map<String, dynamic> json) => _$UpdateProblemResponseDataFromJson(json);
}