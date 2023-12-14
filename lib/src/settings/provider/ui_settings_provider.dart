import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_settings_provider.g.dart';

@Riverpod(keepAlive: true)
class UiSettings extends _$UiSettings {
  @override
  bool build() {
    return false;
  }

  void toggleUI() => state = !state;
}
