import 'package:cloud_firestore/cloud_firestore.dart';

class PerguntaFirestore {
  CollectionReference perguntas =
      FirebaseFirestore.instance.collection('perguntas');

  pegarPerguntas() {
    perguntas.orderBy('idPergunta').snapshots();
  }
}
