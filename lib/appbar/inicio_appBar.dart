import 'package:eight_app/button/icone_button.dart';
import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/service/rotas_service.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:eight_app/theme/ui_icone.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class InicioAppBar extends StatefulWidget {
  const InicioAppBar({
    super.key,
    required Function callback,
  }) : _callback = callback;

  final Function _callback;

  @override
  State<InicioAppBar> createState() => _InicioAppBarState();
}

class _InicioAppBarState extends State<InicioAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UiTamanho.appBar2,
      padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Align(
              alignment: Alignment.centerLeft,
              child: ValueListenableBuilder(
                valueListenable: currentTema,
                builder: (context, Brightness tema, _) {
                  bool isEscuro = tema == Brightness.dark ? true : false;

                  return SvgPicture.asset(
                    isEscuro ? UiIcone.eightEscuro : UiIcone.eight,
                    height: 20,
                  );
                },
              ),
            ),
            onTap: () => widget._callback(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconeButton(
                callback: () => context.push(RotasEnum.BUSCAR.value),
                icone: Icons.search,
              ),
              const SizedBox(width: UiEspaco.pequeno),
              IconeButton(
                callback: () => context.goNamed(RotasEnum.NOTIFICACAO.value,
                    pathParameters: {
                      'idUsuario': "CC1XdGCfQkX3gMskl8S4XBRyIzn2"
                    }),
                icone: Icons.notifications_outlined,
              ),
              const SizedBox(width: UiEspaco.pequeno),
              IconeButton(
                callback: () => context.push(RotasEnum.MENU.value),
                icone: Icons.menu,
              ),
            ],
          )
        ],
      ),
    );
  }
}
