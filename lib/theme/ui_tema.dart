import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/theme/ui_cor.dart';
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
        statusBarColor: isEscuro ? UiCor.statusBarEscuro : UiCor.statusBar,
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
    brightness: Brightness.light,
    scaffoldBackgroundColor: UiCor.back,
  );

  static ThemeData temaEscuro = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: UiCor.appBarEscuro,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: UiCor.backEscuro,
  );
}
