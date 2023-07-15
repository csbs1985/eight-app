import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class EllipsisText extends StatelessWidget {
  const EllipsisText({
    super.key,
    required String texto,
  }) : _texto = texto;

  final String _texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(vertical: UiEspaco.grande),
      child: Text(
        _texto,
        maxLines: 10,
        style: Theme.of(context).textTheme.bodyMedium,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
