import 'package:dio/dio.dart';

class Client {
  late final Dio dio;
  final String baseUrl;

  Client(this.baseUrl) {
    dio = Dio();
    dio.options.baseUrl = baseUrl;
  }

  Future<String> signIn({
    required String name,
    required String password,
  }) async {
    final response = await dio.post('/api/auth/sign-in', data: FormData.fromMap(
      {'name': name, 'password': password},)
    );

    if (response.statusCode == 201) {
      return response.data['token'].toString();
    }

    throw 'Error';
  }
}
