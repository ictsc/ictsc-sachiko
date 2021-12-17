import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/user_api.dart';

import 'base/client.dart';
import 'base/model/error.dart';
import 'base/model/result.dart';

final userProvider = Provider((ref) => UserAPI(ref.read));

class UserAPI {
  late final Dio client;

  UserAPI(Reader reader) {
    client = reader(clientProvider);
  }

  /// ユーザーのフォームを送り、プロフィールを更新する。
  Future<Result<UpdateUserResponse>> updateUser(
    UpdateUserRequest updateUserRequest,
  ) async {
    try {
      return await client
          .put(
            '/api/users/${updateUserRequest.id}',
            data: updateUserRequest.toJson(),
          )
          .then(
            (result) =>
                Result.success(UpdateUserResponse.fromJson({...result.data})),
          );
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// ユーザーのフォームを送り、プロフィールを更新する。
  Future<Result<GetUserGroupResponse>> findAllUserGroups() async {
    try {
      return await client
          .get(
        '/api/usergroups',
      )
          .then((result) {
        return Result.success(GetUserGroupResponse.fromJson({...result.data}));
      });
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
