import 'package:flutter/material.dart';

import '../runway.dart';

class RunwayDistances extends StatelessWidget {
  const RunwayDistances({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RunwayData(),
      ],
    );
  }
}
