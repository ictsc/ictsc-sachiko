import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';

final rankingProvider = Provider((ref) => RankingAPI(ref.read));

class RankingAPI {
  late final Dio client;

  RankingAPI(Reader reader) {
    client = reader(clientProvider);
  }

  Future<Result<String>> getRanking() async {
    try {
      return await client
          .get(
            '/api/ranking/near-me',
            // data: updateUserRequest.toJson(),
          )
          .then((result) => const Result.success(''));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
