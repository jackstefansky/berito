import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_fonts.dart';

abstract final class AppTheme {
  /// Brand green: app seed color and logo color.
  static const brandGreen = Color(0xFF74CC7C);

  static final materialLight = ThemeData(
    useMaterial3: true,
    fontFamily: AppFonts.body,
    colorScheme: ColorScheme.fromSeed(seedColor: brandGreen),
  );

  static final materialDark = ThemeData(
    useMaterial3: true,
    fontFamily: AppFonts.body,
    colorScheme: ColorScheme.fromSeed(
      seedColor: brandGreen,
      brightness: Brightness.dark,
    ),
  );

  static const cupertinoLight = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: brandGreen,
    textTheme: _cupertinoText,
  );

  static const cupertinoDark = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: brandGreen,
    textTheme: _cupertinoText,
  );

  /// Cupertino text styles don't inherit a base family, so set each one.
  static const _cupertinoText = CupertinoTextThemeData(
    textStyle: TextStyle(
      fontFamily: AppFonts.body,
      fontSize: 17,
      letterSpacing: -0.41,
      color: CupertinoColors.label,
    ),
    actionTextStyle: TextStyle(
      fontFamily: AppFonts.body,
      fontSize: 17,
      letterSpacing: -0.41,
      color: brandGreen,
    ),
    tabLabelTextStyle: TextStyle(
      fontFamily: AppFonts.body,
      fontSize: 10,
      letterSpacing: -0.24,
      color: CupertinoColors.inactiveGray,
    ),
    navTitleTextStyle: TextStyle(
      fontFamily: AppFonts.heading,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      color: CupertinoColors.label,
    ),
    navLargeTitleTextStyle: TextStyle(
      fontFamily: AppFonts.heading,
      fontSize: 34,
      fontWeight: FontWeight.w700,
      color: CupertinoColors.label,
    ),
    pickerTextStyle: TextStyle(
      fontFamily: AppFonts.body,
      fontSize: 21,
      color: CupertinoColors.label,
    ),
    dateTimePickerTextStyle: TextStyle(
      fontFamily: AppFonts.body,
      fontSize: 21,
      color: CupertinoColors.label,
    ),
  );
}
