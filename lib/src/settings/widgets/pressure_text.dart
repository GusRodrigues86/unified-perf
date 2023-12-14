import 'package:flutter/material.dart';

class PressureText extends StatelessWidget {
  const PressureText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.compress),
        SizedBox.square(dimension: 8),
        Text('Pressure'),
      ],
    );
  }
}
