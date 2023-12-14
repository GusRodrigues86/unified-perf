import 'package:flutter/material.dart';

class LengthText extends StatelessWidget {
  const LengthText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.straighten),
        SizedBox.square(dimension: 8),
        Text('Length'),
      ],
    );
  }
}
