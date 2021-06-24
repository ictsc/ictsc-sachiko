import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'user_group_id') required String userGroupId,
    @JsonKey(name: 'is_read_only') required bool isReadOnly,
  }) = _User;

 factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// "user": {
  // "id": "9eb2b5b9-3aa7-42cd-a93e-bd5c62b4f5ab",
  // "created_at": "2021-06-20T13:19:31.411Z",
  // "updated_at": "2021-06-20T13:19:31.411Z",
  // "name": "admin",
  // "display_name": "",
  // "user_group_id": "98eb0b57-b38f-4915-9ab1-65313a243dfb",
  // "is_read_only": false
// }