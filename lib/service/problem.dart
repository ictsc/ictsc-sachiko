import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';
import 'model/problem.dart';

final problemProvider = Provider((ref) => Problem(ref.read));

class Problem {
  late final Dio client;

  Problem(Reader reader) {
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
}
