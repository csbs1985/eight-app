import 'package:eight_app/button/avatar_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/modal/historia_modal.dart';
import 'package:eight_app/service/historia_service.dart';
import 'package:eight_app/service/rotas_service.dart';
import 'package:eight_app/theme/ui_borda.dart';
import 'package:eight_app/theme/ui_cor.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:go_router/go_router.dart';

class HistoriaButton extends StatefulWidget {
  const HistoriaButton({super.key});

  @override
  State<HistoriaButton> createState() => _HistoriaButtonState();
}

class _HistoriaButtonState extends State<HistoriaButton> {
  final HistoriaService _historiaService = HistoriaService();

  void _abrirModal(BuildContext context) {
    _historiaService.limparCurrentHistoria();

    showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      barrierColor: UiCor.overlay,
      duration: const Duration(milliseconds: 300),
      builder: (context) => const HistoriaModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UiTamanho.appBar2,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        children: [
          AvatarButton(
            avatar: currentUsuario.value.avatarUsuario,
            callback: () => context.goNamed(RotasEnum.PERFIL.value,
                pathParameters: {'idUsuario': "CC1XdGCfQkX3gMskl8S4XBRyIzn2"}),
          ),
          const SizedBox(width: UiEspaco.pequeno),
          Expanded(
            child: GestureDetector(
              onTap: () => _abrirModal(context),
              child: Container(
                alignment: Alignment.centerLeft,
                height: UiTamanho.input,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(UiBorda.circulo),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      CRIAR_BOTAO,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
