import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/problem_create_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

class ProblemCreatePageStateNotifier
    extends StateNotifier<ProblemCreatePageState> with LocatorMixin {
  ProblemCreatePageStateNotifier(ProblemCreatePageState state) : super(state);

  final formKey = GlobalKey<FormState>();
  final editorTextController = TextEditingController();
  final titleController = TextEditingController();

  /// 編集状態とプレビュー状態を交代させる
  void onSetIsPreviewButton({required bool isPreview}) {
    state = state.copyWith(isPreview: isPreview);
  }
}

final createProblemProvider = StateNotifierProvider.autoDispose<
    ProblemCreatePageStateNotifier, ProblemCreatePageState>(
  (refs) => ProblemCreatePageStateNotifier(const ProblemCreatePageState()),
);
