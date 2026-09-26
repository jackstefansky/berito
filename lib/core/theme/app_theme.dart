import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static const _seed = Color(0xFF1E5EFF);

  static final materialLight = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _seed),
  );

  static final materialDark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seed,
      brightness: Brightness.dark,
    ),
  );

  static const cupertinoLight = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: _seed,
  );

  static const cupertinoDark = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: _seed,
  );
}
