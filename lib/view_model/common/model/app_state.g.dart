// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_AppState', json, () {
    final val = _$_AppState(
      isDark: $checkedConvert(json, 'is_dark', (v) => v as bool?),
    );
    return val;
  }, fieldKeyMap: const {'isDark': 'is_dark'});
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'is_dark': instance.isDark,
    };
