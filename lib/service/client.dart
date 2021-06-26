import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_response.dart';
import 'package:ictsc_sachiko/model/authentication/sign_out_response.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';
import 'package:ictsc_sachiko/model/client/error.dart';
import 'package:ictsc_sachiko/model/client/result.dart';

class Client {
  final Dio dio;
  final String baseUrl;

  Client(this.dio, this.baseUrl) {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    try {
      return await dio
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

  Future<Result<SignOutResponse>> signOut() async {
    try {
      return await dio.delete('/api/auth/signout').then((result) =>
          Result.success(SignOutResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<void> signUp(SignUpRequest signUpRequest) async {
    final response = await dio.post(
      '/api/auth/sign-up',
      data: FormData.fromMap(signUpRequest.toJson()),
    );

    if (response.statusCode == 201) {
      return;
    }

    throw 'Error';
  }
}
