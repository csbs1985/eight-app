import 'package:eight_app/page/inicio_page.dart';
import 'package:eight_app/theme/ui_tema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UiTema.tema,
      darkTheme: UiTema.temaEscuro,
      home: const InicioPage(),
    );
  }
}
