import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/model/authentication/authentication.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/service/web_client.dart';

class AuthenticationStateNotifier extends StateNotifier<Authentication> {
  final WebClient _client;

  AuthenticationStateNotifier(Authentication state, this._client)
      : super(state);

  Future<void> signIn(SignInRequest signInRequest) async {
    // TODO エラーメッセージ
    await _client.signIn(signInRequest).then((token) {
      _client.setAuthorization(token);
      state = state.copyWith(isLogin: true);
    });
  }
}

final auth = StateNotifierProvider<AuthenticationStateNotifier, Authentication>(
  (refs) => AuthenticationStateNotifier(
      const Authentication(), WebClient(dotenv.env['API_URL'] ?? '')),
);
