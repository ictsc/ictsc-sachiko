import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider((_) => Client.getInstance());

class Client with DioMixin implements Dio {
  Client._([BaseOptions? options]) {
    options = BaseOptions(baseUrl: dotenv.env['API_URL'] ?? '', headers: {
      Headers.acceptHeader: 'application/json',
    });

    this.options = options;

    if (kIsWeb) {
      final clientAdapter = BrowserHttpClientAdapter();
      clientAdapter.withCredentials = true;

      httpClientAdapter = clientAdapter;
    }

    interceptors.add(LogInterceptor(responseBody: true));
  }

  static Dio getInstance() => Client._();
}
