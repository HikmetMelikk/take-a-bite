import 'package:flutter/material.dart';
import 'package:take_a_bite/product/init/theme/app_color_scheme.dart';
import 'package:take_a_bite/product/init/theme/app_theme_manager.dart';

class AppDarkTheme implements AppThemeManager {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: AppColorScheme.darkTheme,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFefeeee),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      );
}
