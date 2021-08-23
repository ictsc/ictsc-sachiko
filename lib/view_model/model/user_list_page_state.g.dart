// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserListPageState _$_$_UserListPageStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_UserListPageState', json, () {
    final val = _$_UserListPageState(
      isLoading: $checkedConvert(json, 'is_loading', (v) => v) ?? false,
      userGroups: $checkedConvert(
              json,
              'user_groups',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      UserGroupDetail.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
    );
    return val;
  }, fieldKeyMap: const {
    'isLoading': 'is_loading',
    'userGroups': 'user_groups'
  });
}

Map<String, dynamic> _$_$_UserListPageStateToJson(
        _$_UserListPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'user_groups': instance.userGroups,
    };
