import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/common/model/app_state.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(AppState state) : super(state);

  /// 編集状態とプレビュー状態を交代させる
  void onSetIsPreviewButton({required bool isPreview}) {
    state = state.copyWith(isDark: isPreview);
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
  (refs) => AppStateNotifier(const AppState()),
);
