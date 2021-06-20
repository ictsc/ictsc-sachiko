import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/authentication.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/view_model/common/client_provider.dart';

class AuthenticationStateNotifier extends StateNotifier<Authentication> {
  AuthenticationStateNotifier(Authentication state, this.ref) : super(state);

  final ProviderReference ref;

  Future<void> signIn(SignInRequest signInRequest) async {
    // TODO エラーメッセージ
    final client = ref.read(clientProvider).state;

    client.signIn(signInRequest).then((token) {
      client.setAuthorization(token);
      state = state.copyWith(isLogin: true);
    });
  }

// );
}

final auth = StateNotifierProvider<AuthenticationStateNotifier, Authentication>(
  (refs) => AuthenticationStateNotifier(const Authentication(), refs),
);
