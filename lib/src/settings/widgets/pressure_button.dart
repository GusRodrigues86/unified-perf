import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/units_provider.dart';

class PressureButton extends StatelessWidget {
  const PressureButton({super.key});

  @override
  Widget build(BuildContext context) {
    final btn1 = FocusNode();
    final btn2 = FocusNode();

    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(unitSettingsProvider);

        return ToggleButtons(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          isSelected: [model.pressureIsMetric, !model.pressureIsMetric],
          onPressed: ref.read(unitSettingsProvider.notifier).togglePressure,
          focusNodes: [btn1, btn2],
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('QNH (mb)'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('in Hg'),
            ),
          ],
        );
      },
    );
  }
}
