import 'package:flutter/material.dart';

class HistoriaPage extends StatefulWidget {
  const HistoriaPage({
    super.key,
    required String idHistoria,
  }) : _idHistoria = idHistoria;

  final String _idHistoria;

  @override
  State<HistoriaPage> createState() => _HistoriaPageState();
}

class _HistoriaPageState extends State<HistoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(),
    );
  }
}
