import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.freezed.dart';
// part 'sign_in_response.g.dart';

@freezed
abstract class SignInResponse with _$SignInResponse {
  const factory SignInResponse.success() = Success;

  const factory SignInResponse.failed(String errorMessage) = Failure;

// factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);
}
