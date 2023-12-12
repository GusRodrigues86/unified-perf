import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref) {
  // final isLightTheme = ref.watch(userThemeSelectionProvider);

  return ThemeData.from(
    useMaterial3: true,
    colorScheme: // isLight? lightColorScheme ? darkColorScheme;
        darkColorScheme,
  );
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF245FA6),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFD5E3FF),
  onPrimaryContainer: Color(0xFF001B3C),
  secondary: Color(0xFF555F71),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD9E3F8),
  onSecondaryContainer: Color(0xFF121C2B),
  tertiary: Color(0xFF6E5675),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFF8D8FE),
  onTertiaryContainer: Color(0xFF28132F),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFDFBFF),
  onBackground: Color(0xFF1A1C1E),
  surface: Color(0xFFFDFBFF),
  onSurface: Color(0xFF1A1C1E),
  surfaceVariant: Color(0xFFE0E2EC),
  onSurfaceVariant: Color(0xFF43474E),
  outline: Color(0xFF74777F),
  onInverseSurface: Color(0xFFF1F0F4),
  inverseSurface: Color(0xFF2F3033),
  inversePrimary: Color(0xFFA7C8FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF245FA6),
  outlineVariant: Color(0xFFC4C6CF),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFA7C8FF),
  onPrimary: Color(0xFF003061),
  primaryContainer: Color(0xFF004689),
  onPrimaryContainer: Color(0xFFD5E3FF),
  secondary: Color(0xFFBDC7DC),
  onSecondary: Color(0xFF273141),
  secondaryContainer: Color(0xFF3D4758),
  onSecondaryContainer: Color(0xFFD9E3F8),
  tertiary: Color(0xFFDBBCE1),
  onTertiary: Color(0xFF3E2845),
  tertiaryContainer: Color(0xFF563E5D),
  onTertiaryContainer: Color(0xFFF8D8FE),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1A1C1E),
  onBackground: Color(0xFFE3E2E6),
  surface: Color(0xFF1A1C1E),
  onSurface: Color(0xFFE3E2E6),
  surfaceVariant: Color(0xFF43474E),
  onSurfaceVariant: Color(0xFFC4C6CF),
  outline: Color(0xFF8E9199),
  onInverseSurface: Color(0xFF1A1C1E),
  inverseSurface: Color(0xFFE3E2E6),
  inversePrimary: Color(0xFF245FA6),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFA7C8FF),
  outlineVariant: Color(0xFF43474E),
  scrim: Color(0xFF000000),
);
