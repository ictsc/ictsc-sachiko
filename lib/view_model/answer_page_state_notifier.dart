import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/answer_api.dart';
import 'package:ictsc_sachiko/service/model/answer_api.dart';
import 'package:ictsc_sachiko/service/model/problem_api.dart';
import 'package:ictsc_sachiko/service/problem_api.dart';
import 'package:ictsc_sachiko/view_model/model/answer_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

final answerListProvider = StateNotifierProvider.autoDispose<
    AnswerListPageStateNotifier, AnswerPageState>(
  (ref) => AnswerListPageStateNotifier(const AnswerPageState(), ref),
);

class AnswerListPageStateNotifier extends StateNotifier<AnswerPageState>
    with LocatorMixin {
  AnswerListPageStateNotifier(AnswerPageState state, this.ref) : super(state);

  final ProviderReference ref;

  /// 問題ごとの回答一覧を取得する。
  Future<void> fetchAnswers(String problemId) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(answerProvider)
        .getByProblemAllAnswer(FindAllAnswerRequest(problemId: problemId))
        .then((result) => result.when(
              success: (response) {
                state = state.copyWith(answers: response.data.answers);
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  Future<void> fetchProblem(String problemId) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(problemProvider)
        .findByIdProblem(FindProblemRequest(id: problemId))
        .then((result) => result.when(
      success: (response) {
        state = state.copyWith(problem: response.data.problem);
      },
      failure: (_) {},
    ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }
}
