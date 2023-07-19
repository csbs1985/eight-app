import 'package:eight_app/config/texto_config.dart';
import 'package:flutter/material.dart';

class TermoPage extends StatefulWidget {
  const TermoPage({super.key});

  @override
  State<TermoPage> createState() => _TermoPageState();
}

class _TermoPageState extends State<TermoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TERMO,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                TERMO_USO,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
