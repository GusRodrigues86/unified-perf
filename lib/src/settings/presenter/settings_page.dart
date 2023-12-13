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
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Settings Page',
            ),
          ),
        ),
        Text('counter'),
      ],
    );
  }
}
