import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/user_group.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'user_group_id') required String userGroupId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_group') UserGroup? userGroup,
    @JsonKey(name: 'is_read_only') required bool isReadOnly,
  }) = _User;

 factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}