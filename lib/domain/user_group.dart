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
