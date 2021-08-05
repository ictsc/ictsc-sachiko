import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/user_api.dart';
import 'package:ictsc_sachiko/service/user_api.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/profile_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

class ProfilePageStateNotifier extends StateNotifier<ProfilePageState>
    with LocatorMixin {
  ProfilePageStateNotifier(ProfilePageState state, this.ref) : super(state) {
    // フォームにセットする処理。
    final user = ref.read(authStateProvider).user;

    if (user == null) return;

    displayNameController = TextEditingController(text: user.displayName);
  }

  final ProviderReference ref;

  late final TextEditingController displayNameController;

  /// プロフィールを更新するボタンの処理。
  void Function()? onSaveButton({required BuildContext context, required GlobalKey<FormState> key}) {
    return () {
      final user = ref.read(authStateProvider).user;

      if (user == null) return;

      ref
          .read(userProvider)
          .updateUser(
            UpdateUserRequest(
              id: user.id,
              displayName: displayNameController.text,
            ),
          )
          .then(
            (value) => value.when(
              success: (_) async {
                ref.read(authStateProvider.notifier).signCheck();

                // 更新出来ましたの処理。
                context.showFlashBar(
                  content: Text(
                    '更新完了しました。',
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
          );
    };
  }
}
