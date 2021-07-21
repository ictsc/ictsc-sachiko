import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem.dart';
import 'package:ictsc_sachiko/model/problem/delete_problem_request.dart';
import 'package:ictsc_sachiko/model/problem_list_page_state.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';
import 'package:state_notifier/state_notifier.dart';

final problemListProvider = StateNotifierProvider.autoDispose<
    ProblemListPageStateNotifier, ProblemListPageState>(
  (ref) => ProblemListPageStateNotifier(const ProblemListPageState(), ref),
);

class ProblemListPageStateNotifier extends StateNotifier<ProblemListPageState>
    with LocatorMixin {
  ProblemListPageStateNotifier(ProblemListPageState state, this.ref)
      : super(state) {
    fetchProblems();
  }

  final ProviderReference ref;

  Future<void> onSelectProblem(Problem problem) async {
    state = state.copyWith(problem: problem);
  }

  /// 問題一覧を取得する
  Future<void> fetchProblems() async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(clientProvider)
        .state
        .findAllProblem()
        .then((result) => result.when(
              success: (response) {
                state = state.copyWith(problems: response.data.problems);
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  /// 問題を削除する
  Future<void> deleteProblems(String id) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(clientProvider)
        .state
        .deleteProblem(DeleteProblemRequest(id: id))
        .then((result) => result.when(
              success: (_) {
                fetchProblems();
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }
}
