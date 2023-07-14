import 'package:eight_app/config/texto_config.dart';
import 'package:flutter/material.dart';

class InicioAppBar extends StatefulWidget {
  const InicioAppBar({
    super.key,
    required Function callback,
  }) : _callback = callback;

  final Function _callback;

  @override
  State<InicioAppBar> createState() => _InicioAppBarState();
}

class _InicioAppBarState extends State<InicioAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: GestureDetector(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            EIGHT,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        onTap: () => widget._callback(),
      ),
    );
  }
}
