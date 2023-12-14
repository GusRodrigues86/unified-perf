import 'package:flutter/material.dart';

import 'mass_button.dart';
import 'mass_text.dart';

class MassSettings extends StatelessWidget {
  const MassSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: MassText()),
        MassButton(),
      ],
    );
  }
}
