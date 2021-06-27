import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required int code,
    required Data data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required User user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
