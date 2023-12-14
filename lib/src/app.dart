import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class UnifiedPerfApp extends ConsumerWidget {
  const UnifiedPerfApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ref.watch(themeProvider),
      routerConfig: router,
    );
  }
}
