import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/web_client.dart';

// WebClientを共有するためのプロバイダー
final clientProvider =
    StateProvider((_) => WebClient(dotenv.env['API_URL'] ?? ''));
