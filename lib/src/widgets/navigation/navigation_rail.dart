import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      labelType: NavigationRailLabelType.selected,
      onDestinationSelected: (i) => setState(() => _selectedIndex = i),
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
    );
  }
}
