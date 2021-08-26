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
      topRanking: $checkedConvert(
              json,
              'top_ranking',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
      nearRanking: $checkedConvert(
              json,
              'near_ranking',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
    );
    return val;
  }, fieldKeyMap: const {
    'isLoading': 'is_loading',
    'topRanking': 'top_ranking',
    'nearRanking': 'near_ranking'
  });
}

Map<String, dynamic> _$_$_ScoreboardPageStateToJson(
        _$_ScoreboardPageState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      'top_ranking': instance.topRanking,
      'near_ranking': instance.nearRanking,
    };
