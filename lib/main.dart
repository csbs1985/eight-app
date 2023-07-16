import 'dart:io';
import 'package:eight_app/config/hive_config.dart';
import 'package:eight_app/config/rotas_config.dart';
import 'package:eight_app/theme/ui_tema.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveConfig.start();

  await Firebase.initializeApp();

  await initializeDateFormatting('pt_BR', null);

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    UiTema.definirTema();
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    UiTema.definirTema();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(0),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: routes.routerDelegate,
        routeInformationParser: routes.routeInformationParser,
        routeInformationProvider: routes.routeInformationProvider,
        theme: UiTema.tema,
        darkTheme: UiTema.temaEscuro,
      ),
    );
  }
}
