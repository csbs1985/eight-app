import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/theme/ui_cor.dart';
import 'package:eight_app/theme/ui_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiTema {
  static definirTema() {
    currentTema.value =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    trocarTema();
  }

  static trocarTema() {
    bool isEscuro = currentTema.value == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: isEscuro ? Brightness.light : Brightness.dark,
        statusBarColor: isEscuro ? UiCor.statusBarEscuro : UiCor.statusBar,
        statusBarIconBrightness: isEscuro ? Brightness.light : Brightness.dark,
        systemNavigationBarColor:
            isEscuro ? UiCor.navigationBarEscuro : UiCor.navigationBar,
        systemNavigationBarIconBrightness:
            isEscuro ? Brightness.light : Brightness.dark,
      ),
    );
  }

  static ThemeData tema = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: UiCor.appBar,
    ),
    fontFamily: 'machine',
    scaffoldBackgroundColor: UiCor.back,
    textTheme: const TextTheme(
      titleMedium: UiTextoClaro.titleMedium,
      bodyMedium: UiTextoClaro.bodyMedium,
      bodySmall: UiTextoClaro.bodySmall,
    ),
  );

  static ThemeData temaEscuro = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: UiCor.appBarEscuro,
    ),
    fontFamily: 'machine',
    scaffoldBackgroundColor: UiCor.backEscuro,
    textTheme: const TextTheme(
      titleMedium: UiTextoEscuro.titleMedium,
      bodyMedium: UiTextoEscuro.bodyMedium,
      bodySmall: UiTextoEscuro.bodySmall,
    ),
  );
}
