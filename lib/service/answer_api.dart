import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';
import 'model/answer_api.dart';

final answerProvider = Provider((ref) => AnswerAPI(ref.read));

class AnswerAPI {
  late final Dio client;

  AnswerAPI(Reader reader) {
    client = reader(clientProvider);
  }

  /// 回答のフォームを送り、回答を作成する。
  Future<Result<CreateAnswerResponse>> createAnswer(
      CreateAnswerRequest createAnswerRequest) async {
    try {
      return await client
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

  /// 問題ごとの回答一覧を取得する。
  Future<Result<FindAllAnswerResponse>> getByProblemAllAnswer(
      FindAllAnswerRequest findAllAnswerRequest) async {
    try {
      return await client
          .get(
            '/api/problems/${findAllAnswerRequest.problemId}/answers',
          )
          .then((result) =>
              Result.success(FindAllAnswerResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
