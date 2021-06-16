import 'dart:io' as io;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';
import 'package:ictsc_sachiko/service/client.dart';

void main() {
  // testが呼び出される毎に毎回呼び出される
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    io.HttpOverrides.global = null;

    // 環境変数のロード
    await dotenv.load();
  });

  group('Authentication', () {
    test('Sign In', () async {
      final path = dotenv.env['API_URL'].toString();
      final client = Client(path);

      // トークンの取得
      final token = await client.signIn(
        name: dotenv.env['TEST_USER_NAME'].toString(),
        password: dotenv.env['TEST_USER_PASSWORD'].toString(),
      );

      expect(token, isNotEmpty);
    });
  });

  group('Sign Up', () {
    test('Sign Up', () async {
      final path = dotenv.env['API_URL'].toString();
      final client = Client(path);

      // 関数実行時にエラーがないかチェック
      expect(
        client.signUp(
          const SignUpRequest(
              userName: 'test', password: 'password', displayName: 'test'),
        ),
        isNoSuchMethodError,
      );
    });
  });
}
