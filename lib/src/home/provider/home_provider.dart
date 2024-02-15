import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  @override
  Future<bool> build() async {
    bool useRail = true;

    if (Platform.isAndroid || Platform.isIOS) {
      useRail = false;

      if (Platform.isIOS) {
        await DeviceInfoPlugin().iosInfo.then<bool>(
              (info) => useRail = info.localizedModel == 'iPad',
            );
      }
    }

    return useRail;
  }
}
