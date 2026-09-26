import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeritoApp extends StatelessWidget {
  const BeritoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AuthCubit>(),
      child: AdaptiveApp.router(
        title: AppConstants.appName,
        themeMode: ThemeMode.system,
        materialLightTheme: AppTheme.materialLight,
        materialDarkTheme: AppTheme.materialDark,
        cupertinoLightTheme: AppTheme.cupertinoLight,
        cupertinoDarkTheme: AppTheme.cupertinoDark,
        routerConfig: getIt<AppRouter>().router,
      ),
    );
  }
}
