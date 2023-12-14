import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/ui_settings_provider.dart';

class ThemeText extends StatelessWidget {
  const ThemeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(uiSettingsProvider);

        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            model
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode_outlined),
            const SizedBox.square(dimension: 8),
            model ? const Text('Dark Mode') : const Text('Light Mode'),
          ],
        );
      },
    );
  }
}
