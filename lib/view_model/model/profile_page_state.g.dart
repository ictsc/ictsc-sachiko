// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfilePageState _$_$_ProfilePageStateFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_ProfilePageState', json, () {
    final val = _$_ProfilePageState(
      isLoading: $checkedConvert(json, 'is_loading', (v) => v) ?? false,
    );
    return val;
  }, fieldKeyMap: const {'isLoading': 'is_loading'});
}

Map<String, dynamic> _$_$_ProfilePageStateToJson(
        _$_ProfilePageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
    };
