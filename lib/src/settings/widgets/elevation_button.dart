import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/units_provider.dart';

class ElevationButton extends StatelessWidget {
  const ElevationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final btn1 = FocusNode();
    final btn2 = FocusNode();

    return Consumer(
      builder: (context, ref, _) {
        final model = ref.watch(unitSettingsProvider);

        return ToggleButtons(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          isSelected: [model.elevationInFeet, !model.elevationInFeet],
          onPressed: ref.read(unitSettingsProvider.notifier).toggleElevation,
          focusNodes: [btn1, btn2],
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('ft (feet)'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('m (meter)'),
            ),
          ],
        );
      },
    );
  }
}
