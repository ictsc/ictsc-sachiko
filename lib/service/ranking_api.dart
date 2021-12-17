import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/ranking_api.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';

final rankingProvider = Provider((ref) => RankingAPI(ref.read));

class RankingAPI {
  late final Dio client;

  RankingAPI(Reader reader) {
    client = reader(clientProvider);
  }

  Future<Result<GetRankingResponse>> getAllRanking() async {
    try {
      return await client
          .get(
            '/api/ranking',
          )
          .then(
            (result) =>
                Result.success(GetRankingResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<GetRankingResponse>> getTopRanking() async {
    try {
      return await client
          .get(
            '/api/ranking/top',
          )
          .then(
            (result) =>
                Result.success(GetRankingResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  Future<Result<GetRankingResponse>> getNearMeRanking() async {
    try {
      return await client
          .get(
            '/api/ranking/near-me',
          )
          .then(
            (result) =>
                Result.success(GetRankingResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
