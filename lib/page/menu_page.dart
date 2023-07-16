import 'package:eight_app/button/item_avatar_button.dart';
import 'package:eight_app/button/item_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/item/titulo_item.dart';
import 'package:flutter/material.dart';

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
              titulo: currentUsuario.value.nomeUsuario,
              texto: PERFIL_DESCRICAO,
            ),
            ItemButton(
              callback: () => {},
              icone: Icons.manage_accounts_outlined,
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
              icone: Icons.source_outlined,
              titulo: ATIVIDADE,
              texto: ATIVIDADE_DESCICAO,
            ),
            const TituloItem(texto: INFORMACOES),
            ItemButton(
              callback: () => {},
              icone: Icons.receipt_outlined,
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
          ],
        ),
      ),
    );
  }
}
