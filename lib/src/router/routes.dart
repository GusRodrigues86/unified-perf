import '../landing/landing.dart';
import '../settings/settings.dart';
import '../takeoff/takeoff.dart';

/// All known routes of the app for being easy to use
enum Routes {
  /// path `/settings`
  settings(path: SettingsPage.path),

  /// path `/takeoff`
  takeoff(path: TakeoffPage.path),

  /// path `/landing`
  landing(path: LandingPage.path);

  /// Easy way to navigate through the app pages
  const Routes({required this.path});

  /// The path to the page
  final String path;
}
