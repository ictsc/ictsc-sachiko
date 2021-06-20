import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
abstract class Error with _$Error {
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
              // TODO: Handle this case.
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

  String get errorMessage =>
      when(unexpectedError: () => 'エラーが発生しました。しばらくしてからもう一度お試し下さい。');

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
