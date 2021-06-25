import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group.freezed.dart';
part 'user_group.g.dart';

@freezed
class UserGroup with _$UserGroup {
  const factory UserGroup({
    required String id,
    required String name,
    required String organization,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'is_full_access') required bool isFullAccess,
  }) = _UserGroup;

  factory UserGroup.fromJson(Map<String, dynamic> json) =>
      _$UserGroupFromJson(json);
}

// "user_group": {
// "id": "46998017-6f2d-4b75-a595-00bf36c7712a",
// "created_at": "2021-06-24T12:26:31.656Z",
// "updated_at": "2021-06-24T12:26:31.656Z",
// "name": "admin-group",
// "organization": "admin-org",
// "is_full_access": true
// },
