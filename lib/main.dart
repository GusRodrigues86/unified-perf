import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';
import 'utils/provider_logger.dart';

void main() {
  runApp(ProviderScope(
    observers: [ProviderLogger()],
    child: const UnifiedPerfApp(),
  ));
}
