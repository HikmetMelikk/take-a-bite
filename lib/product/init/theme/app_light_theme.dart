import 'package:flutter/material.dart';
import 'package:take_a_bite/product/init/theme/app_color_scheme.dart';
import 'package:take_a_bite/product/init/theme/app_theme_manager.dart';

class AppLightTheme implements AppThemeManager {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: AppColorScheme.lightTheme,
        elevatedButtonTheme: elevatedButtonThemeData,
      );

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size(350, 60)),
          foregroundColor: WidgetStateProperty.all(
            AppColorScheme.lightTheme.onPrimary,
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 16,
            ),
          ),
          backgroundColor: WidgetStateProperty.all(AppColorScheme.lightTheme.primary),
          shape: WidgetStateProperty.all(
            const StadiumBorder(),
          ),
        ),
      );
}
