import 'package:eight_app/theme/ui_borda.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class IconeButton extends StatefulWidget {
  const IconeButton({
    super.key,
    required Function callback,
    required IconData icone,
    double? size,
  })  : _callback = callback,
        _icone = icone,
        _size = size;

  final Function _callback;
  final IconData _icone;
  final double? _size;

  @override
  State<IconeButton> createState() => _IconeButtonState();
}

class _IconeButtonState extends State<IconeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(UiBorda.circulo),
      child: Padding(
        padding: const EdgeInsets.all(UiEspaco.pequeno),
        child: Icon(
          widget._icone,
          size: widget._size,
        ),
      ),
      onTap: () => widget._callback(),
    );
  }
}
