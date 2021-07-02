import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem.dart';
import 'package:ictsc_sachiko/model/problem_create_page_state.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class ProblemCreatePageStateNotifier
    extends StateNotifier<ProblemCreatePageState> with LocatorMixin {
  ProblemCreatePageStateNotifier(ProblemCreatePageState state, this.ref)
      : super(state) {
    // ログイン中のユーザーをauthorに代入
    this.state = this.state.copyWith(author: ref.read(auth).user);
  }

  final ProviderReference ref;

  final formKey = GlobalKey<FormState>();
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
  void Function()? onSaveButton() {
    if (state.isLoading) {
      return null;
    }

    return () {
      state = state.copyWith(isLoading: true);

      formKey.currentState?.save();

      // 問題インスタンスの作成
      final problem = Problem(
        code: '',
        authorId: state.author?.id ?? '',
        title: titleController.text,
        body: bodyController.text,
        point: int.tryParse(pointController.text) ?? 0,
        solvedCriterion: int.tryParse(solvedCriterionController.text) ?? 0,
        previousProblemId: state.previousProblem?.id,
      );

      state = state.copyWith(isLoading: false);
    };
  }
}
