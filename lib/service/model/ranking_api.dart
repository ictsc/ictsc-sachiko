import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/domain/user_group.dart';

part 'ranking_api.freezed.dart';
part 'ranking_api.g.dart';

@freezed
class GetRankingResponse with _$GetRankingResponse {
  const factory GetRankingResponse({
    required int code,
    required GetRankingResponseData data,
  }) = _GetRankingResponse;

  factory GetRankingResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRankingResponseFromJson(json);
}

/// @nodoc
@freezed
class GetRankingResponseData with _$GetRankingResponseData {
  const factory GetRankingResponseData({
    @Default([]) List<Group> ranking,
  }) = _GetRankingResponseData;

  factory GetRankingResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetRankingResponseDataFromJson(json);
}

@freezed
class Group with _$Group {
  const factory Group({
    required String userGroupId,
    required UserGroup userGroup,
    required int rank,
    required int point,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
