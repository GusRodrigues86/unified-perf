import 'package:flutter/material.dart';

import 'elevation_button.dart';
import 'elevation_text.dart';

class ElevationSettings extends StatelessWidget {
  const ElevationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ElevationText()),
        ElevationButton(),
      ],
    );
  }
}
