import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/theme/ui_cor.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
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
      backgroundColor: UiCor.appBar,
      elevation: 0,
      toolbarHeight: UiTamanho.appBar,
    ),
    colorScheme: const ColorScheme.light(
      onPrimary: UiCor.input, // input
      onSecondary: UiCor.borda, // borda
      onTertiary: UiCor.texto, // texto
    ),
    iconTheme: const IconThemeData(color: UiCor.icone),
    primaryColor: UiCor.principal,
    scaffoldBackgroundColor: UiCor.back,
    textTheme: const TextTheme(
      bodyMedium: UiTextoClaro.bodyMedium,
      bodySmall: UiTextoClaro.bodySmall,
      labelSmall: UiTextoClaro.labelSmall, // hint
      titleMedium: UiTextoClaro.titleMedium,
      titleSmall: UiTextoClaro.titleSmall,
    ),
  );

  static ThemeData temaEscuro = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: UiCor.appBarEscuro,
      elevation: 0,
      toolbarHeight: UiTamanho.appBar,
    ),
    colorScheme: const ColorScheme.dark(
      onPrimary: UiCor.inputEscuro, // input
      onSecondary: UiCor.bordaEscura, // borda
      onTertiary: UiCor.textoEscuro, // texto
    ),
    iconTheme: const IconThemeData(color: UiCor.iconeEscuro),
    scaffoldBackgroundColor: UiCor.backEscuro,
    textTheme: const TextTheme(
      bodyMedium: UiTextoEscuro.bodyMedium,
      bodySmall: UiTextoEscuro.bodySmall,
      labelSmall: UiTextoEscuro.labelSmall, // hint
      titleMedium: UiTextoEscuro.titleMedium,
      titleSmall: UiTextoEscuro.titleSmall,
    ),
  );
}
