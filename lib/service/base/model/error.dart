import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class Error with _$Error {
  const factory Error.unauthorisedRequest() = _UnauthorisedRequest;

  const factory Error.requestError({required ApiError apiError}) =
      _RequestError;

  const factory Error.unexpectedError() = _UnexpectedError;

  const Error._();

  // ignore: prefer_constructors_over_static_methods
  static Error getApiError(Object error) {
    if (error is Exception) {
      try {
        Error _error;

        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
            case DioErrorType.sendTimeout:
            case DioErrorType.receiveTimeout:
              // TODO: Handle this case.
              break;
            case DioErrorType.response:
              final statusCode = error.response?.statusCode;
              if (statusCode == null) {
                return const Error.unexpectedError();
              }

              if (400 <= statusCode && statusCode < 500) {
                if (statusCode == 401) {
                  return const Error.unauthorisedRequest();
                }

                return Error.requestError(
                    apiError: ApiError(
                        message: error.response?.data.toString() ?? ''));
              }
              break;
            case DioErrorType.cancel:
              // TODO: Handle this case.
              break;
            case DioErrorType.other:
              // TODO: Handle this case.
              break;
            default:
          }

          _error = const Error.unexpectedError();
        } else {
          _error = const Error.unexpectedError();
        }

        return _error;
      } catch (_) {
        return const Error.unexpectedError();
      }
    } else {
      return const Error.unexpectedError();
    }
  }

  String get errorMessage => when(
        unexpectedError: () => 'エラーが発生しました。しばらくしてからもう一度お試し下さい。',
        unauthorisedRequest: () => '認証エラーです。',
        requestError: (apiError) => apiError.message,
      );

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    @JsonKey(name: 'error') required String message,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
