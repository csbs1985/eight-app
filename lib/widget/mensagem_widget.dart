import 'package:flutter/material.dart';

class MensagemWidget extends StatelessWidget {
  const MensagemWidget({
    super.key,
    double? altura,
    required String texto,
  })  : _altura = altura,
        _texto = texto;

  final double? _altura;
  final String _texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _altura,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _texto,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
