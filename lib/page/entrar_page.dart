import 'package:eight_app/button/icone_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/service/auth_service.dart';
import 'package:eight_app/theme/ui_icone.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EntrarPage extends StatefulWidget {
  const EntrarPage({super.key});

  @override
  State<EntrarPage> createState() => _EntrarPageState();
}

class _EntrarPageState extends State<EntrarPage> {
  final AuthService _authService = AuthService();

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  @override
  void initState() {
    _definirVersao();
    super.initState();
  }

  Future<void> _definirVersao() async {
    final info = await PackageInfo.fromPlatform();
    setState(() => _packageInfo = info);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: UiEspaco.normal),
            Expanded(
              child: SvgPicture.asset(
                UiIcone.eight,
                width: MediaQuery.sizeOf(context).width / 2.5,
              ),
            ),
            Text(
              ENTRAR_BEM_VINDO,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: UiEspaco.normal),
            Text(
              ENTRAR_DESCRICAO,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: UiEspaco.grande),
            Center(
              child: IconeButton(
                callback: () => {},
                icone: UiIcone.google,
                size: 40,
              ),
            ),
            const SizedBox(height: UiEspaco.grande),
            Text(
              '$POR • v${_packageInfo.version}',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
