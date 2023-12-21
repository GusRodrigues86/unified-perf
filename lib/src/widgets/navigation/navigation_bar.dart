import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/routes.dart';

class MobileNav extends StatefulWidget {
  const MobileNav({super.key});

  @override
  State<MobileNav> createState() => _MobileNavState();
}

class _MobileNavState extends State<MobileNav> {
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
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (i) => setState(() {
        _selectedIndex = i;
        navigate(i);
      }),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.flight_takeoff),
          selectedIcon: Icon(Icons.flight_takeoff),
          label: 'Take-Off',
        ),
        NavigationDestination(
          icon: Icon(Icons.flight_land),
          selectedIcon: Icon(Icons.flight_land),
          label: 'Landing',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings),
          selectedIcon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
