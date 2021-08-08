import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/answer.dart';

part 'answer_api.freezed.dart';
part 'answer_api.g.dart';

@freezed
class CreateAnswerRequest with _$CreateAnswerRequest {
  const factory CreateAnswerRequest({
    required String problemId,
    required String body,
  }) = _CreateAnswerRequest;

  factory CreateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAnswerRequestFromJson(json);
}

@freezed
class CreateAnswerResponse with _$CreateAnswerResponse {
  const factory CreateAnswerResponse({
    required int code,
    required CreateAnswerResponseData data,
  }) = _CreateAnswerResponse;

  factory CreateAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAnswerResponseFromJson(json);
}

/// @nodoc
@freezed
class CreateAnswerResponseData with _$CreateAnswerResponseData {
  const factory CreateAnswerResponseData({
    required Answer answer,
  }) = _CreateAnswerResponseData;

  factory CreateAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateAnswerResponseDataFromJson(json);
}

@freezed
class FindAllAnswerRequest with _$FindAllAnswerRequest {
  const factory FindAllAnswerRequest({
    required String problemId,
  }) = _FindAllAnswerRequest;

  factory FindAllAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$FindAllAnswerRequestFromJson(json);
}

@freezed
class FindAllAnswerResponse with _$FindAllAnswerResponse {
  const factory FindAllAnswerResponse({
    required int code,
    required FindAllAnswerResponseData data,
  }) = _FindAllAnswerResponse;

  factory FindAllAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$FindAllAnswerResponseFromJson(json);
}

/// @nodoc
@freezed
class FindAllAnswerResponseData with _$FindAllAnswerResponseData {
  const factory FindAllAnswerResponseData({
    required List<Answer> answers,
  }) = _FindAllAnswerResponseData;

  factory FindAllAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$FindAllAnswerResponseDataFromJson(json);
}

@freezed
class UpdateAnswerRequest with _$UpdateAnswerRequest {
  const factory UpdateAnswerRequest({
    required String problemId,
    required String answerId,
    required int? point,
    required String? body,
  }) = _UpdateAnswerRequest;

  factory UpdateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAnswerRequestFromJson(json);
}

@freezed
class UpdateAnswerResponse with _$UpdateAnswerResponse {
  const factory UpdateAnswerResponse({
    required int code,
    required UpdateAnswerResponse data,
  }) = _UpdateAnswerResponse;

  factory UpdateAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateAnswerResponseFromJson(json);
}

/// @nodoc
@freezed
class UpdateAnswerResponseData with _$UpdateAnswerResponseData {
  const factory UpdateAnswerResponseData({
    required Answer answer,
  }) = _UpdateAnswerResponseData;

  factory UpdateAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$UpdateAnswerResponseDataFromJson(json);
}
