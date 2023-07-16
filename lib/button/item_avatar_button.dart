import 'package:eight_app/button/avatar_button.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class ItemAvatarButton extends StatefulWidget {
  const ItemAvatarButton({
    Key? key,
    required this.avatar,
    required this.callback,
    required this.texto,
    required this.titulo,
  }) : super(key: key);

  final String avatar;
  final Function callback;
  final String titulo;
  final String texto;

  @override
  State<ItemAvatarButton> createState() => _ItemAvatarButtonState();
}

class _ItemAvatarButtonState extends State<ItemAvatarButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => isPressed = false);
        widget.callback();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            AvatarButton(
              avatar: widget.avatar,
              size: 24,
            ),
            const SizedBox(width: UiEspaco.normal),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.titulo,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 2),
                  Text(widget.texto,
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
