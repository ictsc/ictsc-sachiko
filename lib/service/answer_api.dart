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

  /// 問題のフォームを送り、問題を作成する
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
}
