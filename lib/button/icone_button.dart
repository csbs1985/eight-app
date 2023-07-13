import 'package:eight_app/theme/ui_borda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconeButton extends StatefulWidget {
  const IconeButton({
    super.key,
    required Function callback,
    required String icone,
    ColorFilter? cor,
    double? size,
  })  : _callback = callback,
        _cor = cor,
        _icone = icone,
        _size = size;

  final Function _callback;
  final String _icone;
  final ColorFilter? _cor;
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
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(
          widget._icone,
          colorFilter: widget._cor,
          width: widget._size,
        ),
      ),
      onTap: () => widget._callback(),
    );
  }
}
