import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/answer.dart';

part 'create_answer_response.freezed.dart';
part 'create_answer_response.g.dart';

@freezed
class CreateAnswerResponse with _$CreateAnswerResponse {
  const factory CreateAnswerResponse({
    required int code,
    required Data data,
  }) = _CreateAnswerResponse;

 factory CreateAnswerResponse.fromJson(Map<String, dynamic> json) => _$CreateAnswerResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required Answer answer,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}