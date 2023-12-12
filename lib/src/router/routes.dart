import '../home/home.dart';

/// All known routes of the app for being easy to use
enum Routes {
  /// path `/`
  home(path: HomePage.path, named: HomePage.named),

  /// path `/settings`
  settings(path: '/settings', named: 'settings'),

  /// path `/take_off`
  takeoff(path: '/take_off', named: 'takeoff'),

  /// path `/landing`
  landing(path: '/landing', named: 'landing');

  const Routes({required this.path, required this.named});
  final String path;
  final String named;
}
