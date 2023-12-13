import '../landing/landing.dart';
import '../settings/settings.dart';
import '../takeoff/takeoff.dart';

/// All known routes of the app for being easy to use
enum Routes {
  /// path `/`
  // home(path: HomePage.path, named: HomePage.named),

  /// path `/settings`
  settings(path: SettingsPage.path),

  /// path `/`
  takeoff(path: TakeoffPage.path),

  /// path `/landing`
  landing(path: LandingPage.path);

  const Routes({required this.path});
  final String path;
}
