// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$_$_AuthStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_AuthState', json, () {
    final val = _$_AuthState(
      isLoginChecked:
          $checkedConvert(json, 'is_login_checked', (v) => v as bool?) ?? false,
      user: $checkedConvert(json, 'user',
          (v) => v == null ? null : User.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'isLoginChecked': 'is_login_checked'});
}

Map<String, dynamic> _$_$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'is_login_checked': instance.isLoginChecked,
      'user': instance.user,
    };
