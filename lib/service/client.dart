import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/model/authentication/sign_in_request.dart';
import 'package:ictsc_sachiko/model/authentication/sign_up_request.dart';

class Client {
  late final Dio dio;
  final String baseUrl;

  Client(this.baseUrl) {
    dio = Dio();
    dio.options.baseUrl = baseUrl;
  }

  Future<String> signIn(SignInRequest signInRequest) async {
    final response = await dio.post(
      '/api/auth/sign-in',
      data: FormData.fromMap(signInRequest.toJson()),
    );

    if (response.statusCode == 201) {
      return response.data['token'].toString();
    }

    throw 'Error';
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
