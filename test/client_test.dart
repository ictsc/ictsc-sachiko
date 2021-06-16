import 'dart:io' as io;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';
import 'package:ictsc_sachiko/service/client.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  io.HttpOverrides.global = null;

  // 環境変数のロード
  await dotenv.load();

  Client getTestClient() {
    final path = dotenv.env['API_URL'].toString();
    return Client(path);
  }

  final testSignInRequest = SignInRequest(
    userName: dotenv.env['TEST_USER_NAME'].toString(),
    password: dotenv.env['TEST_USER_PASSWORD'].toString(),
  );

  group('Authentication', () {
    test('Sign In', () async {
      final client = getTestClient();

      // ログイン
      final token = await client.signIn(testSignInRequest);

      // トークンが空ではないか
      expect(token, isNotEmpty);
    });

    test('Sign Out', () async {
      final client = getTestClient();

      // ログイン
      final token = await client.signIn(testSignInRequest);

      // TODO トークンのセット

      // ログアウト
      client.signOut();
    });

    test('Sign Up', () async {
      final client = getTestClient();

      final signUpRequest = SignUpRequest(
        userName: _uuid.v4(),
        password: 'password',
      );

      // 登録
      client.signUp(signUpRequest);

      // ログイン情報
      final signInRequest = SignInRequest(
        userName: signUpRequest.userName,
        password: signUpRequest.password,
      );

      // ログイン
      client.signIn(signInRequest);
    });
  });
}
