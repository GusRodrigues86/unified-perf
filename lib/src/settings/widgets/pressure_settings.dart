import 'package:flutter/material.dart';

import 'pressure_button.dart';
import 'pressure_text.dart';

class PressureSettings extends StatelessWidget {
  const PressureSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: PressureText()),
        PressureButton(),
      ],
    );
  }
}
