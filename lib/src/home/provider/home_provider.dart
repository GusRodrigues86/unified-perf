import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  late final bool _isDesktop;

  @override
  Future<bool> build() async {
    bool useRail = true;
    bool isDesktop = false;

    if (Platform.isAndroid || Platform.isIOS) {
      useRail = false;
      if (Platform.isIOS) {
        _isDesktop = Platform.isIOS;
        await DeviceInfoPlugin().iosInfo.then(
              (info) => useRail = info.localizedModel == 'iPad',
            );
      }
    } else {
      isDesktop = true;
    }

    _isDesktop = isDesktop;
    return useRail;
  }

  bool isDesktop() => _isDesktop;
}
