import 'package:flutter/material.dart';

class TituloItem extends StatelessWidget {
  const TituloItem({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(texto),
    );
  }
}
