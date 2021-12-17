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

  /// ログイン。
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    try {
      return await client
          .post(
            '/api/auth/signin',
            data: signInRequest.toJson(),
          )
          .then(
            (result) =>
                Result.success(SignInResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// ログアウト。
  Future<Result<SignOutResponse>> signOut() async {
    try {
      return await client.delete('/api/auth/signout').then(
            (result) =>
                Result.success(SignOutResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// 新規登録。
  Future<Result<SignUpResponse>> signUp(SignUpRequest signUpRequest) async {
    try {
      return await client
          .post(
            '/api/users',
            data: signUpRequest.toJson(),
          )
          .then(
            (result) =>
                Result.success(SignUpResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// 自分の情報を取得する。
  ///
  /// ログイン済みか確認するのにも使用する。
  Future<Result<SignInResponse>> self() async {
    try {
      return await client
          .get(
            '/api/auth/self',
          )
          .then(
            (result) =>
                Result.success(SignInResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
