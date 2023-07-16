import 'package:cloud_firestore/cloud_firestore.dart';

class HistoriaFirestore {
  CollectionReference historias =
      FirebaseFirestore.instance.collection('historias');
}
