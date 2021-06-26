import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request.freezed.dart';

part 'sign_in_request.g.dart';

@freezed
abstract class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    @JsonKey(name: 'name') required String userName,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}
