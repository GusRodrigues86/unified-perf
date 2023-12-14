import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  const TemperatureText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.thermostat_outlined),
        SizedBox.square(dimension: 8),
        Text('Temperature'),
      ],
    );
  }
}
