// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          displayName: $checkedConvert('display_name', (v) => v as String),
          userGroupId: $checkedConvert('user_group_id', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          userGroup: $checkedConvert(
              'user_group',
              (v) => v == null
                  ? null
                  : UserGroup.fromJson(v as Map<String, dynamic>)),
          userProfile: $checkedConvert(
              'user_profile',
              (v) => v == null
                  ? null
                  : UserProfile.fromJson(v as Map<String, dynamic>)),
          isReadOnly: $checkedConvert('is_read_only', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayName': 'display_name',
        'userGroupId': 'user_group_id',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'userGroup': 'user_group',
        'userProfile': 'user_profile',
        'isReadOnly': 'is_read_only'
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'user_group_id': instance.userGroupId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_group': instance.userGroup,
      'user_profile': instance.userProfile,
      'is_read_only': instance.isReadOnly,
    };

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UserProfile',
      json,
      ($checkedConvert) {
        final val = _$_UserProfile(
          id: $checkedConvert('id', (v) => v as String),
          twitterId: $checkedConvert('twitter_id', (v) => v as String),
          githubId: $checkedConvert('github_id', (v) => v as String),
          facebookId: $checkedConvert('facebook_id', (v) => v as String),
          selfIntroduction:
              $checkedConvert('self_introduction', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'twitterId': 'twitter_id',
        'githubId': 'github_id',
        'facebookId': 'facebook_id',
        'selfIntroduction': 'self_introduction',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'twitter_id': instance.twitterId,
      'github_id': instance.githubId,
      'facebook_id': instance.facebookId,
      'self_introduction': instance.selfIntroduction,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
