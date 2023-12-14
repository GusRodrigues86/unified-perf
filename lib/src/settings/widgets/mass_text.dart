import 'package:flutter/material.dart';

class MassText extends StatelessWidget {
  const MassText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.scale),
        SizedBox.square(dimension: 8),
        Text('Weight/Mass'),
      ],
    );
  }
}
