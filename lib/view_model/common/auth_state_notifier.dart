import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/sign_out_response.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_response.dart';
import 'package:ictsc_sachiko/service/auth.dart';
import 'package:ictsc_sachiko/service/base/model/result.dart';
import 'package:ictsc_sachiko/service/model/auth.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';
import 'package:ictsc_sachiko/view_model/common/model/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(AuthState state, this.ref) : super(state);

  final ProviderReference ref;

  /// ログインを試行し、呼び出し元に成功か失敗かを通知する。
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    final auth = ref.read(authProvider);

    return auth.signIn(signInRequest).then((result) {
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

  Future<Result<SignUpResponse>> signUp(SignUpRequest signUpRequest) async {
    final client = ref.read(clientProvider).state;

    return client.signUp(signUpRequest).then((result) {
      // 登録完了
      result.when(success: (_) {}, failure: (_) {});

      return result;
    });
  }

  /// ログインを試行し、呼び出し元に成功か失敗かを通知する。
  Future<Result<SignInResponse>> signCheck() async {
    final client = ref.read(clientProvider).state;

    return client.self().then((result) {
      result.when(
        success: (result) {
          // ログイン成功
          state = state.copyWith(user: result.data.user);
        },
        failure: (_) {},
      );

      return result;
    }).whenComplete(() => state = state.copyWith(isLoginChecked: true));
  }
}

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (refs) => AuthStateNotifier(const AuthState(), refs),
);
