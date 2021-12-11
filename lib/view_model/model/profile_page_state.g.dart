// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfilePageState _$$_ProfilePageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProfilePageState',
      json,
      ($checkedConvert) {
        final val = _$_ProfilePageState(
          isLoading: $checkedConvert('is_loading', (v) => v ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'isLoading': 'is_loading'},
    );

Map<String, dynamic> _$$_ProfilePageStateToJson(_$_ProfilePageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
    };
