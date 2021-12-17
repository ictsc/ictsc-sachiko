import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
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
        .then(
          (result) => result.when(
            success: (response) {
              var answers = response.data.answers;

              // 回答を日付順にソート
              answers = sortAnswers(answers);

              state = state.copyWith(answers: answers);
            },
            failure: (_) {},
          ),
        )
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
        .then(
          (result) => result.when(
            success: (response) {
              state = state.copyWith(problem: response.data.problem);
            },
            failure: (_) {},
          ),
        )
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  /// 採点ボタンを押した時の処理
  ///
  /// アンサーを配列から発見し返されたアンサーで更新する。
  Future<void> onTapAnswerSave(
    BuildContext context,
    UpdateAnswerRequest updateAnswerRequest,
  ) async {
    await ref.read(answerProvider).updateAnswer(updateAnswerRequest).then(
          (value) => value.when(
            success: (result) {
              // アンサーのコピーを作成。
              final answers = state.answers;

              // IDと一致するアンサーを見つけて位置を取得
              final index = state.answers.indexWhere(
                (element) => element.id == updateAnswerRequest.answerId,
              );

              // 更新
              answers[index] = result.data.answer;

              state = state.copyWith(answers: answers);

              // ポップアップ
              context.showFlashBar(
                content: Text(
                  '採点しました。',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.white),
                ),
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.green,
              );
            },
            failure: (_) {
              context.showFlashBar(
                content: Text(
                  '採点に失敗しました。点数が満点より多い場合や数字以外が含まれている場合は登録されません。',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.white),
                ),
                duration: const Duration(seconds: 3),
                backgroundColor: Theme.of(context).errorColor,
              );
            },
          ),
        );
  }
}
