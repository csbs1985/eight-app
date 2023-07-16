import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/item/historia_item.dart';
import 'package:eight_app/model/categoria_model.dart';
import 'package:eight_app/service/historia_service.dart';
import 'package:eight_app/skeleton/historia_skeleton.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eight_app/widget/mensagem_widget.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HistoriaList extends StatefulWidget {
  const HistoriaList({super.key});

  @override
  State<HistoriaList> createState() => _HistoriaListState();
}

class _HistoriaListState extends State<HistoriaList> {
  final HistoriaService _historiaService = HistoriaService();

  int index = 1;
  bool isMensagemWidget = false;

  @override
  void initState() {
    super.initState();
    _historiaService.pegarHistoria();
  }

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.sizeOf(context).height - (UiTamanho.appBar * 4);

    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: currentCategoria,
          builder: (BuildContext context, CategoriaModel categoria, _) {
            return FirestoreListView(
              query: _historiaService.pegarHistoria(),
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
                QueryDocumentSnapshot<dynamic> snapshot,
              ) {
                SchedulerBinding.instance.addPostFrameCallback(
                    (_) => isMensagemWidget = snapshot.exists ? true : false);

                return AnimationConfiguration.staggeredList(
                  position: index++,
                  duration: const Duration(milliseconds: 175),
                  child: SlideAnimation(
                    verticalOffset: 50,
                    child: FadeInAnimation(
                      child: HistoriaItem(snapshot: snapshot.data()),
                    ),
                  ),
                );
              },
            );
          },
        ),
        if (isMensagemWidget) const MensagemWidget(texto: HISTORIA_FIM),
      ],
    );
  }
}
