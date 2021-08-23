import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/ranking_api.dart';
import 'package:state_notifier/state_notifier.dart';

import 'model/scoreboard_page_state.dart';

final scoreboardProvider = StateNotifierProvider.autoDispose<
    ScoreboardPageStateNotifier, ScoreboardPageState>(
  (ref) => ScoreboardPageStateNotifier(const ScoreboardPageState(), ref),
);

class ScoreboardPageStateNotifier extends StateNotifier<ScoreboardPageState>
    with LocatorMixin {
  ScoreboardPageStateNotifier(ScoreboardPageState state, this.ref)
      : super(state) {
    fetchScoreboard();
  }

  final ProviderReference ref;

  void fetchScoreboard() {
    ref.read(rankingProvider).getRanking();
  }
}
