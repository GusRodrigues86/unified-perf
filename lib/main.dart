import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'src/app.dart';
import 'utils/provider_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  final isDesktop = Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  if (isDesktop) {
    await WindowManager.instance.setMinimumSize(const Size(640, 480));
  }

  const UnifiedPerfApp app = UnifiedPerfApp();
  runApp(
    ProviderScope(
      observers: kDebugMode ? [ProviderLogger()] : null,
      child: kDebugMode ? const UnifiedPerfApp() : app,
    ),
  );
}
