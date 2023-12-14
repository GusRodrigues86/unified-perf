import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/units_provider.dart';

class MassButton extends StatelessWidget {
  const MassButton({super.key});

  @override
  Widget build(BuildContext context) {
    final btn1 = FocusNode();
    final btn2 = FocusNode();

    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(unitSettingsProvider);

        return ToggleButtons(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          isSelected: [model.massIsMetric, !model.massIsMetric],
          onPressed: ref.read(unitSettingsProvider.notifier).toggleMass,
          focusNodes: [btn1, btn2],
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Kg (Kilogram)'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('lbs (Pounds)'),
            ),
          ],
        );
      },
    );
  }
}
