// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserRequest _$$_UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateUserRequest',
      json,
      ($checkedConvert) {
        final val = _$_UpdateUserRequest(
          id: $checkedConvert('id', (v) => v as String),
          displayName: $checkedConvert('display_name', (v) => v as String?),
          twitterId: $checkedConvert('twitter_id', (v) => v as String?),
          githubId: $checkedConvert('github_id', (v) => v as String?),
          facebookId: $checkedConvert('facebook_id', (v) => v as String?),
          selfIntroduction:
              $checkedConvert('self_introduction', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayName': 'display_name',
        'twitterId': 'twitter_id',
        'githubId': 'github_id',
        'facebookId': 'facebook_id',
        'selfIntroduction': 'self_introduction'
      },
    );

Map<String, dynamic> _$$_UpdateUserRequestToJson(
        _$_UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'twitter_id': instance.twitterId,
      'github_id': instance.githubId,
      'facebook_id': instance.facebookId,
      'self_introduction': instance.selfIntroduction,
    };

_$_UpdateUserResponse _$$_UpdateUserResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateUserResponse',
      json,
      ($checkedConvert) {
        final val = _$_UpdateUserResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  UpdateUserResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateUserResponseToJson(
        _$_UpdateUserResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UpdateUserResponseData _$$_UpdateUserResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UpdateUserResponseData',
      json,
      ($checkedConvert) {
        final val = _$_UpdateUserResponseData(
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UpdateUserResponseDataToJson(
        _$_UpdateUserResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_GetUserGroupResponse _$$_GetUserGroupResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GetUserGroupResponse',
      json,
      ($checkedConvert) {
        final val = _$_GetUserGroupResponse(
          code: $checkedConvert('code', (v) => v as int),
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          UserGroupDetail.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GetUserGroupResponseToJson(
        _$_GetUserGroupResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_UserGroupDetail _$$_UserGroupDetailFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UserGroupDetail',
      json,
      ($checkedConvert) {
        final val = _$_UserGroupDetail(
          name: $checkedConvert('name', (v) => v as String),
          organization: $checkedConvert('organization', (v) => v as String),
          members: $checkedConvert(
              'members',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserGroupDetailToJson(_$_UserGroupDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'organization': instance.organization,
      'members': instance.members,
    };

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Member',
      json,
      ($checkedConvert) {
        final val = _$_Member(
          displayName: $checkedConvert('display_name', (v) => v as String),
          profile: $checkedConvert(
              'profile',
              (v) => v == null
                  ? null
                  : UserProfile.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'displayName': 'display_name'},
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'display_name': instance.displayName,
      'profile': instance.profile,
    };
