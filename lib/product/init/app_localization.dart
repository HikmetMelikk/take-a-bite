import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:take_a_bite/product/utils/constants/enums/locales.dart';

@immutable
final class AppLocalization extends EasyLocalization {
  AppLocalization({super.key, required super.child})
      : super(supportedLocales: _supportedLocales, path: _translationsPath, useOnlyLangCode: true);

  static final List<Locale> _supportedLocales = [Locales.tr.locale, Locales.en.locale];

  static const String _translationsPath = 'asset/translations';

  static Future<void> updateLanguage({required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}
