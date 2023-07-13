import 'package:eight_app/theme/ui_cor.dart';
import 'package:flutter/material.dart';

class UiTexto {
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: UiCor.principal,
  );
}

class UiTextoClaro {
  static const TextStyle titleMedium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.normal,
    color: UiCor.texto,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: UiCor.texto,
  );
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: UiCor.texto,
  );
}

class UiTextoEscuro {
  static const TextStyle titleMedium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.normal,
    color: UiCor.textoEscuro,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: UiCor.textoEscuro,
  );
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: UiCor.textoEscuro,
  );
}
