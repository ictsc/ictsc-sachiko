import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_answer_request.freezed.dart';
part 'create_answer_request.g.dart';

@freezed
class CreateAnswerRequest with _$CreateAnswerRequest {
  const factory CreateAnswerRequest({
    required String problemId,
    required String body,
  }) = _CreateAnswerRequest;

 factory CreateAnswerRequest.fromJson(Map<String, dynamic> json) => _$CreateAnswerRequestFromJson(json);
}