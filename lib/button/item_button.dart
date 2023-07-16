import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class ItemButton extends StatefulWidget {
  const ItemButton({
    Key? key,
    required this.callback,
    this.icone,
    required this.texto,
    required this.titulo,
  }) : super(key: key);

  final Function callback;
  final IconData? icone;
  final String titulo;
  final String texto;

  @override
  State<ItemButton> createState() => _ItemButtonState();
}

class _ItemButtonState extends State<ItemButton> {
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
            Icon(widget.icone),
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
