import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ictsc_sachiko/service/client.dart';

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
    // final signUpRequest = SignUpRequest(
    //   userName: dotenv.env['TEST_USER_NAME'].toString(),
    //   password: dotenv.env['TEST_USER_PASSWORD'].toString(),
    // );
    //
    // final signInRequest = SignInRequest(
    //   userName: signUpRequest.userName,
    //   password: signUpRequest.password,
    // );

    // test('Sign In', () async {
    //   final client = getTestClient();
    //
    //   // ログイン
    //   await client.signIn(signInRequest).then((result) => result.when(
    //       success: (_) {},
    //       failure: (e) {
    //         expect(e, isNull);
    //       }));
    // });

    // test('Sign Out', () async {
    //   final client = getTestClient();
    //
    //   // ログイン
    //   await client.signIn(signInRequest).then((result) => result.when(
    //       success: (_) {},
    //       failure: (e) {
    //         expect(e, isNull);
    //       }));
    //
    //   // ログアウト
    //   await client.signOut().then((result) => result.when(
    //       success: (_) {},
    //       failure: (e) {
    //         expect(e, isNull);
    //       }));
    // });

    // test('Sign Up', () async {
    //   final client = getTestClient();
    //
    //   // 登録
    //   await client.signUp(signUpRequest);
    // });
  });
}
