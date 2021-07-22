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

  factory CreateAnswerRequest.fromJson(Map<String, dynamic> json) => _$CreateAnswerRequestFromJson(json);
}

@freezed
class CreateAnswerResponse with _$CreateAnswerResponse {
  const factory CreateAnswerResponse({
    required int code,
    required CreateAnswerResponseData data,
  }) = _CreateAnswerResponse;

  factory CreateAnswerResponse.fromJson(Map<String, dynamic> json) => _$CreateAnswerResponseFromJson(json);
}

@freezed
class CreateAnswerResponseData with _$CreateAnswerResponseData {
  const factory CreateAnswerResponseData({
    required Answer answer,
  }) = _CreateAnswerResponseData;

 factory CreateAnswerResponseData.fromJson(Map<String, dynamic> json) => _$CreateAnswerResponseDataFromJson(json);
}