import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/user.dart';

part 'user_api.freezed.dart';
part 'user_api.g.dart';

@freezed
class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String id,
    String? displayName,
    String? twitterId,
    String? githubId,
    String? facebookId,
    String? selfIntroduction,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}

@freezed
class UpdateUserResponse with _$UpdateUserResponse {
  const factory UpdateUserResponse({
    required int code,
    required UpdateUserResponseData data,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);
}

@freezed
class UpdateUserResponseData with _$UpdateUserResponseData {
  const factory UpdateUserResponseData({
    required User user,
  }) = _UpdateUserResponseData;

  factory UpdateUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseDataFromJson(json);
}

@freezed
class GetUserGroupResponse with _$GetUserGroupResponse {
  const factory GetUserGroupResponse({
    required int code,
    @Default([]) List<UserGroupDetail> data,
  }) = _GetUserGroupResponse;

  factory GetUserGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserGroupResponseFromJson(json);
}

@freezed
class UserGroupDetail with _$UserGroupDetail {
  const factory UserGroupDetail({
    required String name,
    required String organization,
    @Default([]) List<Member> members,
  }) = _UserGroupDetail;

  factory UserGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$UserGroupDetailFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required String displayName,
    UserProfile? profile,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
