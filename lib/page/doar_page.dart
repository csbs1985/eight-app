import 'package:eight_app/button/primeiro_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoarPage extends StatefulWidget {
  const DoarPage({super.key});

  @override
  State<DoarPage> createState() => _DoarPageState();
}

class _DoarPageState extends State<DoarPage> {
  @override
  Widget build(BuildContext context) {
    void _copiarPix(BuildContext context) {
      Clipboard.setData(const ClipboardData(text: PIX_CODIGO));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          DOAR,
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
                DOAR_TEXTO,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              PrimeiroButton(
                callback: () => _copiarPix(context),
                texto: PIX_COPIAR,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
