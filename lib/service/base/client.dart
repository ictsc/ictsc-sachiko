import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider((_) => Client.getInstance());

class Client with DioMixin implements Dio {
  Client._([BaseOptions? options]) {
    const url = bool.hasEnvironment('APP_URL')
        ? String.fromEnvironment('APP_URL')
        : 'http://localhost:8080';

    options = BaseOptions(baseUrl: url, headers: {
      Headers.acceptHeader: 'application/json',
    });

    this.options = options;

    if (kIsWeb) {
      final clientAdapter = BrowserHttpClientAdapter();
      clientAdapter.withCredentials = true;

      httpClientAdapter = clientAdapter;
    }

    if (!kReleaseMode) {
      interceptors.add(LogInterceptor(responseBody: true));
    }
  }

  static Dio getInstance() => Client._();
}
