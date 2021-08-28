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
    fetchTopRanking();
  }

  final ProviderReference ref;

  void fetchTopRanking() {
    ref.read(rankingProvider).getTopRanking().then((value) => value.when(
          success: (response) {
            state = state.copyWith(ranking: response.data.ranking);
          },
          failure: (_) {},
        ));
  }

  void fetchNearMeRanking() {
    ref.read(rankingProvider).getNearMeRanking().then((value) => value.when(
          success: (response) {
            state = state.copyWith(ranking: response.data.ranking);
          },
          failure: (_) {},
        ));
  }

  Function(Object? object) onTapToggleFetchMode() => (Object? object) {
        if (object is bool) {
          if (object) {
            fetchTopRanking();
          } else {
            fetchNearMeRanking();
          }

          state = state.copyWith(isFetchTopRanking: object);
        }
      };
}
