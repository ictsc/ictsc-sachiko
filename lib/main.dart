import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
