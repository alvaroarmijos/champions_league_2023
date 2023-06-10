import 'package:flutter/material.dart';

class CLTheme {
  CLTheme._();

  static const ColorScheme _colorSchemeLight = ColorScheme.light(
      primary: Color(0xFF0E1E5B),
      secondary: Color(0xFF0B0B0B),
      onPrimary: Color(0xFF6594C0),
      onSecondary: Color(0xFF091442));

  static ThemeData get light {
    return ThemeData.from(
      colorScheme: _colorSchemeLight,
      useMaterial3: true,
    );
  }
}
