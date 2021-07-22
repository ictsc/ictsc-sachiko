import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

/// ログインのリクエスト用。
@freezed
class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    required String name,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

/// ログインのレスポンス用。
@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required int code,
    required SignInResponseData data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

/// @nodoc
@freezed
class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    required User user,
  }) = _SignInResponseData;

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);
}

/// ログアウトのレスポンス用。
@freezed
class SignOutResponse with _$SignOutResponse {
  const factory SignOutResponse({required int code}) = _SignOutResponse;

  factory SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$SignOutResponseFromJson(json);
}

/// ユーザー登録のリクエスト用。
@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String name,
    required String password,
    required String userGroupId,
    required String invitationCode,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}

/// ユーザー登録のレスポンス用。
@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required int code,
    required SignUpResponseData data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

/// @nodoc
@freezed
class SignUpResponseData with _$SignUpResponseData {
  const factory SignUpResponseData({
    required User user,
  }) = _SignUpResponseData;

  factory SignUpResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDataFromJson(json);
}
