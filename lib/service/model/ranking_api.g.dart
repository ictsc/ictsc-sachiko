// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRankingResponse _$$_GetRankingResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GetRankingResponse',
      json,
      ($checkedConvert) {
        final val = _$_GetRankingResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  GetRankingResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GetRankingResponseToJson(
        _$_GetRankingResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_GetRankingResponseData _$$_GetRankingResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GetRankingResponseData',
      json,
      ($checkedConvert) {
        final val = _$_GetRankingResponseData(
          ranking: $checkedConvert(
              'ranking',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GetRankingResponseDataToJson(
        _$_GetRankingResponseData instance) =>
    <String, dynamic>{
      'ranking': instance.ranking,
    };

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Group',
      json,
      ($checkedConvert) {
        final val = _$_Group(
          userGroupId: $checkedConvert('user_group_id', (v) => v as String),
          userGroup: $checkedConvert('user_group',
              (v) => UserGroup.fromJson(v as Map<String, dynamic>)),
          rank: $checkedConvert('rank', (v) => v as int),
          point: $checkedConvert('point', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'userGroupId': 'user_group_id',
        'userGroup': 'user_group'
      },
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'user_group_id': instance.userGroupId,
      'user_group': instance.userGroup,
      'rank': instance.rank,
      'point': instance.point,
    };
