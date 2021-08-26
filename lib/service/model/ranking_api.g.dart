// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRankingResponse _$_$_GetRankingResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_GetRankingResponse', json, () {
    final val = _$_GetRankingResponse(
      code: $checkedConvert(json, 'code', (v) => v as int),
      data: $checkedConvert(json, 'data',
          (v) => GetRankingResponseData.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_GetRankingResponseToJson(
        _$_GetRankingResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_GetRankingResponseData _$_$_GetRankingResponseDataFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_GetRankingResponseData', json, () {
    final val = _$_GetRankingResponseData(
      ranking: $checkedConvert(
              json,
              'ranking',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
                  .toList()) ??
          [],
    );
    return val;
  });
}

Map<String, dynamic> _$_$_GetRankingResponseDataToJson(
        _$_GetRankingResponseData instance) =>
    <String, dynamic>{
      'ranking': instance.ranking,
    };

_$_Group _$_$_GroupFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Group', json, () {
    final val = _$_Group(
      userGroupId: $checkedConvert(json, 'user_group_id', (v) => v as String),
      userGroup: $checkedConvert(json, 'user_group',
          (v) => UserGroup.fromJson(v as Map<String, dynamic>)),
      rank: $checkedConvert(json, 'rank', (v) => v as int),
      point: $checkedConvert(json, 'point', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {
    'userGroupId': 'user_group_id',
    'userGroup': 'user_group'
  });
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'user_group_id': instance.userGroupId,
      'user_group': instance.userGroup,
      'rank': instance.rank,
      'point': instance.point,
    };
