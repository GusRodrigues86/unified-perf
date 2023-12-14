import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../home/home.dart';
import '../landing/landing.dart';
import '../settings/settings.dart';
import '../takeoff/takeoff.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/takeoff',
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => HomePage(
          child: child,
        ),
        routes: [
          GoRoute(
            path: TakeoffPage.path,
            name: TakeoffPage.named,
            builder: (_, __) => const TakeoffPage(),
          ),
          GoRoute(
            path: LandingPage.path,
            name: LandingPage.named,
            builder: (_, __) => const LandingPage(),
          ),
          GoRoute(
            path: SettingsPage.path,
            name: SettingsPage.named,
            builder: (_, __) => const SettingsPage(),
          ),
        ],
      ),
    ],
  );
}
