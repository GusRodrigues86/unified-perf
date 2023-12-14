import 'package:flutter/material.dart';

import 'temperature_button.dart';
import 'temperature_text.dart';

class TemperatureSettings extends StatelessWidget {
  const TemperatureSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: TemperatureText()),
        TemperatureButton(),
      ],
    );
  }
}
