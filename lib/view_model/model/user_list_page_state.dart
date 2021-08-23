import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/service/model/user_api.dart';

part 'user_list_page_state.freezed.dart';
part 'user_list_page_state.g.dart';

@freezed
class UserListPageState with _$UserListPageState {
  const factory UserListPageState({
    @Default(false) isLoading,
    @Default([]) List<UserGroupDetail> userGroups,
  }) = _UserListPageState;

 factory UserListPageState.fromJson(Map<String, dynamic> json) => _$UserListPageStateFromJson(json);
}