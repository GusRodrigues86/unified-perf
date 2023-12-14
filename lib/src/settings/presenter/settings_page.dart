import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
        TemperatureSettings(),
        Divider(),
        MassSettings(),
        Divider(),
        PressureSettings(),
        Divider(),
        ElevationSettings(),
        Divider(),
        LengthSettings(),
        Divider(),
        ThemeSettings(),
      ],
    );
  }
}
