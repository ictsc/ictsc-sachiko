import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/answer_api.dart';
import 'package:ictsc_sachiko/service/model/answer_api.dart';
import 'package:ictsc_sachiko/service/model/problem_api.dart';
import 'package:ictsc_sachiko/service/problem_api.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/problem_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

final problemPageStateProvider = StateNotifierProvider.autoDispose<
        ProblemPageStateNotifier, ProblemPageState>(
    (ref) => ProblemPageStateNotifier(const ProblemPageState(), ref));

class ProblemPageStateNotifier extends StateNotifier<ProblemPageState>
    with LocatorMixin {
  ProblemPageStateNotifier(ProblemPageState state, this.ref) : super(state);

  final ProviderReference ref;

  final bodyController = TextEditingController();

  Future<void> fetchProblem(String id) async {
    state = state.copyWith(isLoading: true);

    await ref
        .read(problemProvider)
        .findByIdProblem(FindProblemRequest(id: id))
        .then((result) => result.when(
              success: (response) {
                state = state.copyWith(problem: response.data.problem);
              },
              failure: (_) {},
            ))
        .whenComplete(() => state = state.copyWith(isLoading: false));
  }

  /// 回答を作成する関数を返す処理
  Function()? onPostAnswer(BuildContext context, String problemId) {
    if (state.isFetchLoading) return null;

    final user = ref.read(authStateProvider).user;
    if (user == null) return null;

    return () async {
      state = state.copyWith(isFetchLoading: true);

      await ref
          .read(answerProvider)
          .createAnswer(
            CreateAnswerRequest(
              userGroupId: user.userGroupId,
              problemId: problemId,
              body: bodyController.text,
            ),
          )
          .then((result) => result.when(
                success: (response) {
                  context.showFlashBar(
                    content: Text(
                      '回答を受け付けました。',
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
                      '回答投稿に失敗。回答を提出20分間は同一の問題に回答できません。',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: Colors.white),
                    ),
                    duration: const Duration(seconds: 3),
                    backgroundColor: Theme.of(context).errorColor,
                  );
                },
              ))
          .whenComplete(() => state = state.copyWith(isFetchLoading: false));
    };
  }

  /// 回答一覧取得ボタンを押されたとき、回答一覧の処理の入った関数を返す高階関数。
  Function()? onFetchAnswers(BuildContext context, String problemId) {
    if (state.isFetchLoading) return null;

    return () async {
      state = state.copyWith(isFetchLoading: true);

      await ref
          .read(answerProvider)
          .getByProblemAllAnswer(FindAllAnswerRequest(problemId: problemId))
          .then(
            (result) => result.when(
              success: (response) {
                final answers = response.data.answers;

                // 日付順にソート
                answers.sort((A, B) {
                  if (A.createdAt.isAfter(B.createdAt)) return 0;

                  return 1;
                });

                state = state.copyWith(answers: response.data.answers);

                context.showFlashBar(
                  content: Text(
                    '回答一覧を取得しました。',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white),
                  ),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Theme.of(context).primaryColor,
                );
              },
              failure: (_) {},
            ),
          )
          .whenComplete(() => state = state.copyWith(isFetchLoading: false));
    };
  }
}
