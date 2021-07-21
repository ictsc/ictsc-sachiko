import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    required String name,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required int code,
    required SignInResponseData data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

@freezed
class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    required User user,
  }) = _SignInResponseData;

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);
}
