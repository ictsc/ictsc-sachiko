// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_AuthState',
      json,
      ($checkedConvert) {
        final val = _$_AuthState(
          isLoginChecked:
              $checkedConvert('is_login_checked', (v) => v as bool? ?? false),
          user: $checkedConvert(
              'user',
              (v) =>
                  v == null ? null : User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'isLoginChecked': 'is_login_checked'},
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'is_login_checked': instance.isLoginChecked,
      'user': instance.user,
    };
