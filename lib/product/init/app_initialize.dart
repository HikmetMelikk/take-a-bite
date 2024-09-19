import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_a_bite/firebase_options.dart';

@immutable
final class AppInitialize {
  Future<void> setupApplication() async {
    await runZonedGuarded<Future<void>?>(_initializeApp, (error, stackTrace) {
      error;
    });
  }

  static Future<void> _initializeApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
