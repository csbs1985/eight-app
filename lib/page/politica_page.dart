import 'package:eight_app/config/texto_config.dart';
import 'package:flutter/material.dart';

class PoliticaPage extends StatefulWidget {
  const PoliticaPage({super.key});

  @override
  State<PoliticaPage> createState() => _PoliticaPageState();
}

class _PoliticaPageState extends State<PoliticaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          POLITICA,
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
                POLITICA_PRIVACIDADE,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
