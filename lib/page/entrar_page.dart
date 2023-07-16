import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/service/auth_service.dart';
import 'package:eight_app/theme/ui_borda.dart';
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
                width: MediaQuery.sizeOf(context).width / 2.5,
                UiIcone.eight,
                color: Theme.of(context).iconTheme.color,
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
            InkWell(
              borderRadius: BorderRadius.circular(UiBorda.circulo),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  UiIcone.google,
                  width: 40,
                ),
              ),
              onTap: () => {},
            ),
            const SizedBox(height: UiEspaco.grande),
            Text(
              '$POR ${_packageInfo.version}',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
