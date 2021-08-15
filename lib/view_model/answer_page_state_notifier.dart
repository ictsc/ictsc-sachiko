import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/answer.dart';
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
                var answers = response.data.answers;

                // 回答を日付順にソート
                answers = sortAnswers(answers);

                state = state.copyWith(answers: answers);
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  bool answerFilter(Answer answer) {
    if (state.answerFilterState == 1) {
      return answer.point != null;
    }

    if (state.answerFilterState == 2) {
      return answer.point == null;
    }

    return true;
  }

  List<Answer> sortAnswers(List<Answer> answers) {
    answers.sort((A, B) {
      if (A.createdAt.isAfter(B.createdAt)) {
        if (state.isLatest) {
          return 0;
        }

        return 1;
      }

      if (state.isLatest) {
        return 1;
      }

      return 0;
    });

    return answers;
  }

  Function(Object? object) onChangedLatestSort() => (Object? object) {
        if (object is bool) {
          state = state.copyWith(
            isLatest: object,
          );

          state = state.copyWith(
            answers: sortAnswers(state.answers),
          );
        }
      };

  Function(Object? object) onChangedAnswerFilter() => (Object? object) {
    if (object is int) {
      state = state.copyWith(
        answerFilterState: object,
      );

      state = state.copyWith(
        answers: sortAnswers(state.answers),
      );
    }
  };

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

  // 採点ボタンを押した時の処理
  Future<void> onTapAnswerSave(UpdateAnswerRequest updateAnswerRequest) async {
    await ref
        .read(answerProvider)
        .updateAnswer(updateAnswerRequest)
        .then((value) => value.when(
              success: (_) {
                // TODO トースト


                fetchAnswers(updateAnswerRequest.problemId);
              },
              failure: (_) {},
            ));
  }
}
