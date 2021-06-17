import 'dart:io' as io;

import 'package:dio/dio.dart';
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
    return Client(Dio(), path);
  }

  group('Authentication', () {
    final signUpRequest = SignUpRequest(
      userName: _uuid.v4(),
      password: 'password',
    );

    final signInRequest = SignInRequest(
      userName: signUpRequest.userName,
      password: signUpRequest.password,
    );

    test('Sign Up', () async {
      final client = getTestClient();

      // 登録
      await client.signUp(signUpRequest);
    });

    test('Sign In', () async {
      final client = getTestClient();

      // ログイン
      final token = await client.signIn(signInRequest);

      // トークンが空ではないか
      expect(token, isNotEmpty);
    });

    test('Sign Out', () async {
      final client = getTestClient();

      // ログイン
      final token = await client.signIn(signInRequest);

      // TODO トークンのセット

      // トークンが空ではないか
      expect(token, isNotEmpty);

      // ログアウト
      await client.signOut();
    });
  });
}
