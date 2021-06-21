import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/authentication.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_response.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';

class AuthenticationStateNotifier extends StateNotifier<Authentication> {
  AuthenticationStateNotifier(Authentication state, this.ref) : super(state);

  final ProviderReference ref;

  /// ログインを試行し、呼び出し元に成功か失敗かを通知する。
  Future<SignInResponse> signIn(SignInRequest signInRequest) async {
    final client = ref.read(clientProvider).state;

    return client.signIn(signInRequest).then(
          (result) => result.when(
            success: (_) {
              // ログイン成功
              state = state.copyWith(isLogin: true);

              return const SignInResponse.success();
            },
            failure: (error) {
              // 呼び出し元へエラーメッセージを通知
              return SignInResponse.failed(error.errorMessage);
            },
          ),
        );
  }
}

final auth = StateNotifierProvider.autoDispose<AuthenticationStateNotifier,
    Authentication>(
  (refs) => AuthenticationStateNotifier(const Authentication(), refs),
);
