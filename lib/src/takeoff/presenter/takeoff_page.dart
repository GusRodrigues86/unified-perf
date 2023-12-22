import 'package:flutter/material.dart';

class TakeoffPage extends StatelessWidget {
  const TakeoffPage({super.key});

  /// the path to `/`
  static const String path = '/takeoff';

  /// the named path to `/settings`
  static const String named = 'takeoff';

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(child: Text('Takeoff Page')),
          ),
        ),
      ],
    );
  }
}
