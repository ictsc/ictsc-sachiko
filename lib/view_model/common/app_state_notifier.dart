import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/view_model/common/model/app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(AppState state) : super(state) {
    darkModeCheck();
  }

  /// 編集状態とプレビュー状態を交代させる
  Future<void> onSetIsPreviewButton({required bool isPreview}) async {
    state = state.copyWith(isDark: isPreview);

    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', isPreview);
  }

  Future<void> darkModeCheck() async {
    final prefs = await SharedPreferences.getInstance();
    state = state.copyWith(isDark: prefs.getBool('isDarkMode'));
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
  (refs) => AppStateNotifier(const AppState()),
);
