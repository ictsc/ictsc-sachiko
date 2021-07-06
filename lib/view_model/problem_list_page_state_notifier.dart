import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem_list_page_state.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';
import 'package:state_notifier/state_notifier.dart';

class ProblemListPageStateNotifier extends StateNotifier<ProblemListPageState>
    with LocatorMixin {
  ProblemListPageStateNotifier(ProblemListPageState state, this.ref)
      : super(state) {
    fetchProblems();
  }

  final ProviderReference ref;

  /// 問題一覧を取得する
  Future<void> fetchProblems() async {
    await ref
        .read(clientProvider)
        .state
        .findAllProblem()
        .then((result) => result.when(
              success: (response) {
                state = state.copyWith(problems: response.data.problems);
              },
              failure: (_) {},
            ));
  }
}
