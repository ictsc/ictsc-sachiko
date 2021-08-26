import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/service/model/ranking_api.dart';

part 'scoreboard_page_state.freezed.dart';
part 'scoreboard_page_state.g.dart';

@freezed
class ScoreboardPageState with _$ScoreboardPageState {
  const factory ScoreboardPageState({
    @Default(false) bool isLoading,
    @Default(true) bool isFetchTopRanking,
    @Default([]) List<Group> ranking,
  }) = _ScoreboardPageState;

  factory ScoreboardPageState.fromJson(Map<String, dynamic> json) =>
      _$ScoreboardPageStateFromJson(json);
}
