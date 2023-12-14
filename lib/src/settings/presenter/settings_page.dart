import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  /// the subpath to `/settings`
  static const String path = '/settings';

  /// the named path to `/settings`
  static const String named = 'settings';

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Icon(Icons.thermostat),
            Text('Temperature'),
          ],
        ),
        Divider(),
        Row(
          children: [
            Icon(Icons.line_weight),
            Text('Weight'),
          ],
        ),
        Divider(),
        Row(
          children: [
            Icon(Icons.compress),
            Text('Pressure'),
          ],
        ),
        Divider(),
      ],
    );
  }
}
