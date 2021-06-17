import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/service/client.dart';

class WebClient {
  WebClient(String baseUrl) {
    final dio = Dio();

    final clientAdapter = BrowserHttpClientAdapter();
    clientAdapter.withCredentials = true;

    dio.httpClientAdapter = clientAdapter;

    Client(dio, baseUrl);
  }
}
