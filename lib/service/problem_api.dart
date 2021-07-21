import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';
import 'model/problem_api.dart';

final problemProvider = Provider((ref) => ProblemAPI(ref.read));

class ProblemAPI {
  late final Dio client;

  ProblemAPI(Reader reader) {
    client = reader(clientProvider);
  }

  /// 問題のフォームを送り、問題を作成する。
  Future<Result<CreateProblemResponse>> createProblem(
      CreateProblemRequest createProblemRequest) async {
    try {
      return await client
          .post('/api/problems', data: createProblemRequest.toJson())
          .then((result) =>
              Result.success(CreateProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<String>> deleteProblem(
      DeleteProblemRequest deleteProblemRequest) async {
    try {
      return await client
          .delete('/api/problems/${deleteProblemRequest.id}')
          .then((result) => const Result.success(''));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
  /// 問題一覧を取得する
  Future<Result<FindAllProblemResponse>> findAllProblem() async {
    try {
      return await client
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
      return await client.get('/api/problems/${findProblemRequest.id}').then(
              (result) =>
              Result.success(FindProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<UpdateProblemResponse>> updateProblem(
      UpdateProblemRequest updateProblemRequest) async {
    try {
      return await client
          .put('/api/problems/${updateProblemRequest.id}',
          data: updateProblemRequest.toJson())
          .then((result) =>
          Result.success(UpdateProblemResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
