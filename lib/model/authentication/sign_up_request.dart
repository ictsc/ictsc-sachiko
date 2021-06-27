import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String name,
    required String password,
    required String userGroupId,
    required String invitationCode,
  }) = _SignUpRequest;

 factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
}