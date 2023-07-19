import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/firestore/pergunta_firestore.dart';
import 'package:eight_app/skeleton/historia_skeleton.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:eight_app/widget/mensagem_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PerguntaPage extends StatefulWidget {
  const PerguntaPage({super.key});

  @override
  State<PerguntaPage> createState() => _PerguntaPageState();
}

class _PerguntaPageState extends State<PerguntaPage> {
  final PerguntaFirestore _perguntaFirestore = PerguntaFirestore();

  int index = 1;

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.sizeOf(context).height - (UiTamanho.appBar * 4);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          PERGUNTAS,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: FirestoreListView(
            query: _perguntaFirestore.pegarPerguntas(),
            pageSize: 10,
            shrinkWrap: true,
            reverse: true,
            physics: const NeverScrollableScrollPhysics(),
            loadingBuilder: (context) => const HistoriaSkeleton(),
            errorBuilder: (context, error, _) => MensagemWidget(
              altura: altura,
              texto: ERRO_SOLICITACAO,
            ),
            emptyBuilder: (context) => MensagemWidget(
              altura: altura,
              texto: SEM_RESULTADO,
            ),
            itemBuilder: (
              BuildContext context,
              snapshot,
            ) {
              return AnimationConfiguration.staggeredList(
                position: index++,
                duration: const Duration(milliseconds: 175),
                child: SlideAnimation(
                  verticalOffset: 50,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        Text(
                          snapshot['texto'],
                          maxLines: 10,
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
