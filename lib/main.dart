import 'package:flutter/material.dart';
import 'package:take_a_bite/product/init/app_initialize.dart';
import 'package:take_a_bite/product/init/theme/app_dark_theme.dart';
import 'package:take_a_bite/product/init/theme/app_light_theme.dart';
import 'package:take_a_bite/product/router/app_router.dart';

Future<void> main() async {
  AppInitialize().setupApplication();
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Take A Bite',
      debugShowCheckedModeBanner: false,
      theme: AppLightTheme().themeData,
      darkTheme: AppDarkTheme().themeData,
      routerConfig: appRouter,
    );
  }
}
