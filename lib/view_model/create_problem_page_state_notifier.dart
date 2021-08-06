import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/problem_api.dart';
import 'package:ictsc_sachiko/service/problem_api.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/problem_create_page_state.dart';
import 'package:ictsc_sachiko/view_model/problem_list_page_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class CreateProblemPageStateNotifier
    extends StateNotifier<ProblemCreatePageState> with LocatorMixin {
  CreateProblemPageStateNotifier(ProblemCreatePageState state, this.ref)
      : super(state) {
    // ログイン中のユーザーをauthorに代入
    this.state = this.state.copyWith(author: ref.read(authStateProvider).user);
  }

  final ProviderReference ref;

  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  final pointController = TextEditingController();
  final solvedCriterionController = TextEditingController();
  final previousProblemTitleController = TextEditingController();
  final codeController = TextEditingController();

  /// 編集状態とプレビュー状態を交代させる
  void onSetIsPreviewButton({required bool isPreview}) {
    state = state.copyWith(isPreview: isPreview);
  }

  /// 保存処理の関数を返す
  void Function()? onSaveButton(
      {required BuildContext context,
      required GlobalKey<FormState> key,
      String? id}) {
    if (state.isLoading) {
      return null;
    }

    // 新規
    if (state.problem == null) {
      return () {
        state = state.copyWith(isLoading: true);

        key.currentState?.save();

        // 問題のインスタンスを作成
        final createProblemRequest = CreateProblemRequest(
          code: codeController.text,
          authorId: state.author?.id ?? '',
          title: titleController.text,
          body: bodyController.text,
          point: int.tryParse(pointController.text) ?? 0,
          solvedCriterion: int.tryParse(solvedCriterionController.text) ?? 0,
          previousProblemId: state.previousProblem?.id,
        );

        ref
            .read(problemProvider)
            .createProblem(createProblemRequest)
            .then((response) => response.when(
                  success: (_) {
                    context.router.pushNamed('/manage/problems');
                  },
                  failure: (_) {},
                ))
            .whenComplete(() => state = state.copyWith(isLoading: false));
      };
    }

    // 更新
    return () {
      state = state.copyWith(isLoading: true);

      key.currentState?.save();

      // 問題のインスタンスを作成
      final updateProblemRequest = UpdateProblemRequest(
        id: id ?? '',
        authorId: state.author?.id ?? '',
        title: titleController.text,
        body: bodyController.text,
        point: int.tryParse(pointController.text) ?? 0,
        solvedCriterion: int.tryParse(solvedCriterionController.text) ?? 0,
        previousProblemId: state.previousProblem?.id,
      );

      ref
          .read(problemProvider)
          .updateProblem(updateProblemRequest)
          .then((response) => response.when(
                success: (_) async {
                  await ref.read(problemListProvider.notifier).fetchProblems();
                  context.router.pushNamed('/manage/problems');
                },
                failure: (_) {},
              ))
          .whenComplete(() => state = state.copyWith(isLoading: false));
    };
  }

  void fetchProblem(String id) {
    ref
        .read(problemProvider)
        .findByIdProblem(FindProblemRequest(id: id))
        .then((response) => response.when(
              success: (result) {
                final problem = result.data.problem;

                titleController.text = problem.title;
                bodyController.text = problem.body;
                pointController.text = problem.point.toString();
                solvedCriterionController.text =
                    problem.solvedCriterion.toString();
                previousProblemTitleController.text =
                    problem.previousProblemId.toString();
                codeController.text = problem.code;

                state = state.copyWith(problem: problem);
              },
              failure: (_) {},
            ));
  }
}
