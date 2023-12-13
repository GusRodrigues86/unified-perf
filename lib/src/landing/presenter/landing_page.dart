import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  /// the subpath to `/settings`
  static const String path = '/landing';

  /// the named path to `/settings`
  static const String named = 'landing';

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Landing Page',
            ),
          ),
        ),
        Text('counter'),
      ],
    );
  }
}
