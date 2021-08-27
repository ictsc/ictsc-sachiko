import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/problem.dart';
import 'package:ictsc_sachiko/service/model/problem_api.dart';
import 'package:ictsc_sachiko/service/problem_api.dart';
import 'package:ictsc_sachiko/view_model/model/problem_list_page_state.dart';
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

    timer = Timer.periodic(
      const Duration(seconds: 30),
      (timer) {
        if (state.isAutoLoad) {
          fetchProblems();
        }
      },
    );
  }

  late Timer? timer;
  final ProviderReference ref;

  Future<void> onSelectProblem(String? problemId) async {
    if (problemId == null) return;

    // IDと一致している問題を探す
    final Problem? findedProblem =
        state.problems.firstWhereOrNull((element) => problemId == element.id);
    state = state.copyWith(problem: findedProblem);
  }

  /// 問題一覧を取得する
  Future<void> fetchProblems() async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(problemProvider)
        .findAllProblem()
        .then((result) => result.when(
              success: (response) {
                state = state.copyWith(problems: response.data.problems);

                onSelectProblem(state.problem?.id);
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  void onTapToggleAutoModeCheckBox(bool? isChecked) {
    if (isChecked != null) {
      state = state.copyWith(isAutoLoad: isChecked);

      if (isChecked) {
        timer = Timer.periodic(
          const Duration(seconds: 30),
          (timer) {
            if (state.isAutoLoad) {
              fetchProblems();
            }
          },
        );
      } else {
        timer?.cancel();
      }
    }
  }

  /// 問題を削除する
  Future<void> deleteProblems(String id) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(problemProvider)
        .deleteProblem(DeleteProblemRequest(id: id))
        .then((result) => result.when(
              success: (_) {
                // 最新を取得
                fetchProblems();
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }
}

extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
