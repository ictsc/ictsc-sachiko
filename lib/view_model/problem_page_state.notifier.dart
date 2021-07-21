import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem/find_problem_request.dart';
import 'package:ictsc_sachiko/model/problem_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

import 'common/client_provider.dart';

final problemPageStateProvider = StateNotifierProvider.autoDispose<
    ProblemPageStateNotifier,
    ProblemPageState>(
        (ref) => ProblemPageStateNotifier(const ProblemPageState(), ref));

class ProblemPageStateNotifier extends StateNotifier<ProblemPageState>
    with LocatorMixin {
  ProblemPageStateNotifier(ProblemPageState state, this.ref) : super(state);

  final ProviderReference ref;

  Future<void> fetchProblem(String id) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(clientProvider)
        .state
        .findByIdProblem(FindProblemRequest(id: id))
        .then((result) =>
        result.when(
          success: (response) {
            state = state.copyWith(problem: response.data.problem);
          },
          failure: (_) {},
        ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }
}
