import 'package:eight_app/button/item_avatar_button.dart';
import 'package:eight_app/button/item_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/item/titulo_item.dart';
import 'package:eight_app/service/rotas_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => BuscarhPageState();
}

class BuscarhPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MENU,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TituloItem(texto: CONTA),
            ItemAvatarButton(
              avatar: currentUsuario.value.avatarUsuario,
              callback: () {},
              titulo: currentUsuario.value.nome,
              texto: PERFIL_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.fingerprint_outlined,
              titulo: USUARIO_EDITAR,
              texto: USUARIO_EDITAR_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.notifications_outlined,
              titulo: NOTIFICACAO,
              texto: NOTIFICACAO_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.schedule_outlined,
              titulo: ATIVIDADE,
              texto: ATIVIDADE_DESCRICAO,
            ),
            const SizedBox(height: 16),
            const Divider(),
            const TituloItem(texto: APLICACAO),
            ItemButton(
              callback: () => context.push(RotasEnum.DOAR.value),
              icone: Icons.favorite_border_outlined,
              titulo: DOAR,
              texto: DOAR_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.description_outlined,
              titulo: TERMO,
              texto: TERMO_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.help_outline_outlined,
              titulo: PERGUNTAS,
              texto: PERGUNTAS_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.verified_user_outlined,
              titulo: POLITICA,
              texto: POLITICA_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.info_outlined,
              titulo: SOBRE,
              texto: SOBRE_DESCRICAO,
            ),
            const SizedBox(height: 16),
            const Divider(),
            const TituloItem(texto: FINALIZAR),
            ItemButton(
              callback: () => {},
              icone: Icons.logout_outlined,
              titulo: SAIR,
              texto: SAIR_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.person_remove_outlined,
              titulo: DELETAR,
              texto: DELETAR_DESCRICAO,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
