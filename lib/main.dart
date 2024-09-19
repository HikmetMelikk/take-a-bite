import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:take_a_bite/product/init/app_initialize.dart';
import 'package:take_a_bite/product/init/app_localization.dart';
import 'package:take_a_bite/product/init/theme/app_dark_theme.dart';
import 'package:take_a_bite/product/init/theme/app_light_theme.dart';
import 'package:take_a_bite/product/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  AppInitialize().setupApplication();
  runApp(AppLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      title: 'Take A Bite',
      debugShowCheckedModeBanner: false,
      theme: AppLightTheme().themeData,
      darkTheme: AppDarkTheme().themeData,
      routerConfig: appRouter,
    );
  }
}
