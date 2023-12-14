import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/ui_settings_provider.dart';

class ThemeButtom extends StatelessWidget {
  const ThemeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(uiSettingsProvider);

        return Switch(
          value: model,
          onChanged: (_) => ref.read(uiSettingsProvider.notifier).toggleUI(),
        );
      },
    );
  }
}
