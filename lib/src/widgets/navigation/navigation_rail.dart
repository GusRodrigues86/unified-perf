import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/routes.dart';

class DesktopNav extends StatefulWidget {
  const DesktopNav({super.key});

  @override
  State<DesktopNav> createState() => _DesktopNavState();
}

class _DesktopNavState extends State<DesktopNav> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void navigate(int i) {
    switch (i) {
      case 0:
        context.goNamed(Routes.takeoff.name);
        break;
      case 1:
        context.goNamed(Routes.landing.name);
        break;
      case 2:
        context.goNamed(Routes.settings.name);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: NavigationRail(
          selectedIndex: _selectedIndex,
          labelType: NavigationRailLabelType.selected,
          onDestinationSelected: (i) => setState(() {
            _selectedIndex = i;
            navigate(i);
          }),
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.flight_takeoff),
              selectedIcon: Icon(Icons.flight_takeoff),
              label: Text('Take-Off'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.flight_land),
              selectedIcon: Icon(Icons.flight_land),
              label: Text('Landing'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings),
              selectedIcon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
