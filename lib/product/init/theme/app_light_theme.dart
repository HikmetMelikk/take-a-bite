import 'package:flutter/material.dart';
import 'package:take_a_bite/product/init/theme/app_color_scheme.dart';
import 'package:take_a_bite/product/init/theme/app_theme_manager.dart';

class AppLightTheme implements AppThemeManager {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: AppColorScheme.lightTheme,
      );
}
