import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/authentication.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_response.dart';
import 'package:ictsc_sachiko/model/authentication/sign_out_response.dart';
import 'package:ictsc_sachiko/model/client/result.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';

class AuthenticationStateNotifier extends StateNotifier<Authentication> {
  AuthenticationStateNotifier(Authentication state, this.ref) : super(state);

  final ProviderReference ref;

  /// ログインを試行し、呼び出し元に成功か失敗かを通知する。
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    final client = ref.read(clientProvider).state;

    return client.signIn(signInRequest).then((result) {
      result.when(
        success: (result) {
          // ログイン成功
          state = state.copyWith(user: result.data.user);
        },
        failure: (_) {},
      );

      return result;
    });
  }

  Future<Result<SignOutResponse>> signOut() async {
    final client = ref.read(clientProvider).state;

    return client.signOut().then((result) {
      result.when(
          success: (_) {
            // ログアウト成功
            state = state.copyWith(user: null);
          },
          failure: (_) {});

      return result;
    });
  }
}

final auth = StateNotifierProvider.autoDispose<AuthenticationStateNotifier,
    Authentication>(
  (refs) => AuthenticationStateNotifier(const Authentication(), refs),
);
