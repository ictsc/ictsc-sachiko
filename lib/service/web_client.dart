import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:ictsc_sachiko/service/client.dart';

class WebClient extends Client {
  WebClient(String baseUrl) : super(Dio(), baseUrl) {
    final clientAdapter = BrowserHttpClientAdapter();
    clientAdapter.withCredentials = true;

    dio.httpClientAdapter = clientAdapter;
  }
}
