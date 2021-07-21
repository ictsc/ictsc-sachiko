import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/base/client.dart';

import 'base/model/error.dart';
import 'base/model/result.dart';
import 'model/auth.dart';

final authProvider = Provider((ref) => Auth(ref.read));

class Auth {
  late final Dio client;

  Auth(Reader reader) {
    client = reader(clientProvider);
  }

  /// ログイン
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    try {
      return await client
          .post(
            '/api/auth/signin',
            data: signInRequest.toJson(),
          )
          .then((result) =>
              Result.success(SignInResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
