import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
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
