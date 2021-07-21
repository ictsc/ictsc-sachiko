import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/model/answer/create_answer_request.dart';
import 'package:ictsc_sachiko/model/answer/create_answer_response.dart';
import 'package:ictsc_sachiko/service/base/model/error.dart';
import 'package:ictsc_sachiko/service/base/model/result.dart';

class Client {
  final Dio dio;
  final String baseUrl;

  Client(this.dio, this.baseUrl) {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  /// 問題のフォームを送り、問題を作成する
  Future<Result<CreateAnswerResponse>> createAnswer(
      CreateAnswerRequest createAnswerRequest) async {
    try {
      return await dio
          .post(
            '/api/problems/${createAnswerRequest.problemId}/answers',
            data: createAnswerRequest,
          )
          .then((result) =>
              Result.success(CreateAnswerResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
