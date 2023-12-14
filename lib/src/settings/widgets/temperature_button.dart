import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/units_provider.dart';

class TemperatureButton extends StatelessWidget {
  const TemperatureButton({super.key});

  @override
  Widget build(BuildContext context) {
    final btn1 = FocusNode();
    final btn2 = FocusNode();

    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(unitSettingsProvider);

        return ToggleButtons(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          isSelected: [model.temperatureIsMetric, !model.temperatureIsMetric],
          onPressed: ref.read(unitSettingsProvider.notifier).toggleTemp,
          focusNodes: [btn1, btn2],
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('°C (Celsius)'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('°F (Fahrenheit)'),
            ),
          ],
        );
      },
    );
  }
}
