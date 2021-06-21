import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/authentication.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_response.dart';
import 'package:ictsc_sachiko/model/client/error.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';

class AuthenticationStateNotifier extends StateNotifier<Authentication> {
  AuthenticationStateNotifier(Authentication state, this.ref) : super(state);

  final ProviderReference ref;

  Future<SignInResponse> signIn(SignInRequest signInRequest) async {
    // TODO エラーメッセージ
    final client = ref.read(clientProvider).state;

    await client.signIn(signInRequest).then((result) {
      result.when(success: (token) {
        client.setAuthorization(token);
        state = state.copyWith(isLogin: true);

        return const SignInResponse.success();
      }, failure: (error) {
        return SignInResponse.failed(error.errorMessage);
      });
    });

    return SignInResponse.failed(const Error.unexpectedError().errorMessage);
  }
}

final auth = StateNotifierProvider.autoDispose<AuthenticationStateNotifier, Authentication>(
  (refs) => AuthenticationStateNotifier(const Authentication(), refs),
);
