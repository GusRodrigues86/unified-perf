import 'package:flutter/material.dart';

class ElevationText extends StatelessWidget {
  const ElevationText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.landscape),
        SizedBox.square(dimension: 8),
        Text('Elevation'),
      ],
    );
  }
}
