import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/model/answer/create_answer_request.dart';
import 'package:ictsc_sachiko/model/answer/create_answer_response.dart';
import 'package:ictsc_sachiko/model/problem/create_problem_request.dart';
import 'package:ictsc_sachiko/model/problem/create_problem_response.dart';
import 'package:ictsc_sachiko/model/problem/delete_problem_request.dart';
import 'package:ictsc_sachiko/model/problem/find_all_problem_response.dart';
import 'package:ictsc_sachiko/model/problem/find_problem_request.dart';
import 'package:ictsc_sachiko/model/problem/find_problem_response.dart';
import 'package:ictsc_sachiko/model/problem/update_problem_request.dart';
import 'package:ictsc_sachiko/model/problem/update_problem_response.dart';
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
  Future<Result<CreateProblemResponse>> createProblem(
      CreateProblemRequest createProblemRequest) async {
    try {
      return await dio
          .post('/api/problems', data: createProblemRequest.toJson())
          .then((result) =>
              Result.success(CreateProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// 問題一覧を取得する
  Future<Result<FindAllProblemResponse>> findAllProblem() async {
    try {
      return await dio
          .get(
            '/api/problems',
          )
          .then((result) => Result.success(
              FindAllProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<FindProblemResponse>> findByIdProblem(
      FindProblemRequest findProblemRequest) async {
    try {
      return await dio.get('/api/problems/${findProblemRequest.id}').then(
          (result) =>
              Result.success(FindProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<UpdateProblemResponse>> updateProblem(
      UpdateProblemRequest updateProblemRequest) async {
    try {
      return await dio
          .put('/api/problems/${updateProblemRequest.id}',
              data: updateProblemRequest.toJson())
          .then((result) =>
              Result.success(UpdateProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<String>> deleteProblem(
      DeleteProblemRequest deleteProblemRequest) async {
    try {
      return await dio
          .delete('/api/problems/${deleteProblemRequest.id}')
          .then((result) => const Result.success(''));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
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
