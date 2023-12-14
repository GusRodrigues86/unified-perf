import 'package:flutter/material.dart';

import 'length_button.dart';
import 'length_text.dart';

class LengthSettings extends StatelessWidget {
  const LengthSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: LengthText()),
        LengthButton(),
      ],
    );
  }
}
