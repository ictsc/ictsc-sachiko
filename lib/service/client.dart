import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
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

  Future<Result<void>> signIn(SignInRequest signInRequest) async {
    try {
      return await dio
          .post(
            '/api/auth/signin',
            data: signInRequest.toJson(),
          )
          // ignore: void_checks
          .then((_) => const Result.success(''));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<void> signOut() async {
    final response = await dio.post('/auth/signout');

    if (response.statusCode == 201) {
      return;
    }

    throw 'Error';
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
