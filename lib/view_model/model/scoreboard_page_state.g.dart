// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scoreboard_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScoreboardPageState _$_$_ScoreboardPageStateFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_ScoreboardPageState', json, () {
    final val = _$_ScoreboardPageState(
      isLoading: $checkedConvert(json, 'is_loading', (v) => v) ?? false,
    );
    return val;
  }, fieldKeyMap: const {'isLoading': 'is_loading'});
}

Map<String, dynamic> _$_$_ScoreboardPageStateToJson(
        _$_ScoreboardPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
    };
