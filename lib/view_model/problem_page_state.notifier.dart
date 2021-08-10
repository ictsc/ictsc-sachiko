import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/answer_api.dart';
import 'package:ictsc_sachiko/service/model/answer_api.dart';
import 'package:ictsc_sachiko/service/model/problem_api.dart';
import 'package:ictsc_sachiko/service/problem_api.dart';
import 'package:ictsc_sachiko/ui/common/markdown_preview.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
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
  Function() onPostAnswer(String problemId) => () async {
        final user = ref.read(authStateProvider).user;

        if (user == null) return;

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
                  success: (response) {},
                  failure: (_) {},
                ));
      };

  /// 回答一覧取得ボタンを押されたとき、回答一覧の処理の入った関数を返す高階関数。
  Function() onFetchAnswers(BuildContext context, String problemId) =>
      () async {
        await ref
            .read(answerProvider)
            .getByProblemAllAnswer(FindAllAnswerRequest(problemId: problemId))
            .then(
              (result) => result.when(
                success: (response) {
                  state = state.copyWith(answers: response.data.answers);

                  showDialog(
                      context: context,
                      builder: (_) {
                        return Align(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 1,
                              itemBuilder: (_, i) => Center(
                                    child: SizedBox(
                                        width: 1024,
                                        child: Row(
                                          children: [
                                            ProblemCard(
                                              child: SizedBox(
                                                width: 982,
                                                child: MarkdownPreview(
                                                  data: '# 回答です',
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  )),
                        );
                      });
                },
                failure: (_) {},
              ),
            );
      };
}
