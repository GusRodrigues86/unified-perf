import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../settings/provider/ui_settings_provider.dart';
import '../../widgets/widgets.dart';
import '../provider/home_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({required this.child, super.key});

  static const String named = 'init';
  static const String path = '/';

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: ref.watch(uiSettingsProvider)
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
      child: ref.watch(homeProvider).when(
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (_, __) => const Text('error building the home'),
            data: (useRail) => useRail
                ? Scaffold(
                    body: Padding(
                      padding: ref.read(homeProvider.notifier).isDesktop()
                          ? EdgeInsets.zero
                          : const EdgeInsets.only(top: kToolbarHeight),
                      child: Row(children: [
                        const DesktopNav(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: child,
                          ),
                        ),
                      ]),
                    ),
                  )
                : Scaffold(
                    bottomNavigationBar: const MobileNav(),
                    body: Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight),
                      child: Row(children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: child,
                          ),
                        ),
                      ]),
                    ),
                  ),
          ),
    );
  }
}
