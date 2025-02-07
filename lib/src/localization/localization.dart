import 'package:chucker_flutter/src/view/helper/chucker_ui_helper.dart';
import 'package:chucker_flutter/src/view/helper/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

part 'localization.ur.dart';
part 'localization.en.dart';

///Helps implementing localization in chucker ui
class Localization {
  ///Supported locales
  static const supportedLocales = [Locale('en'), Locale('ur')];

  ///Localization delegates for maintaining localized ui behaviour
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  ///Current locale. It can be changed from settings page
  static Locale currentLocale = supportedLocales.first;

  ///Localized strings
  static Map<String, String> strings = _en;

  ///Updates chucker language
  static void updateLocalization() {
    strings = ChuckerUiHelper.settings.language == Language.urdu ? _ur : _en;
    currentLocale = supportedLocales[ChuckerUiHelper.settings.language.index];
  }
}
