import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  /// Brand green: app seed color and logo color.
  static const brandGreen = Color(0xFF74CC7C);

  static final materialLight = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: brandGreen),
  );

  static final materialDark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: brandGreen,
      brightness: Brightness.dark,
    ),
  );

  static const cupertinoLight = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: brandGreen,
  );

  static const cupertinoDark = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: brandGreen,
  );
}
