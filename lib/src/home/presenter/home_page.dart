import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.child, super.key});

  static const String named = 'init';
  static const String path = '/';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const DesktopNav(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
