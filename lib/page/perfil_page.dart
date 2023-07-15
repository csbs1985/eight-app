import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({
    super.key,
    required String idUsuario,
  }) : _idUsuario = idUsuario;

  final String _idUsuario;

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    print(widget._idUsuario);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          color: Colors.amber,
        ),
      ),
    );
  }
}
