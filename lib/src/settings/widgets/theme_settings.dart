import 'package:flutter/material.dart';

import 'theme_button.dart';
import 'theme_text.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ThemeText()),
        ThemeButtom(),
      ],
    );
  }
}
