import 'package:cloud_firestore/cloud_firestore.dart';

class UsuarioFirestore {
  CollectionReference usuarios =
      FirebaseFirestore.instance.collection('usuarios');

  getUsuarioId(String idUsuario) async {
    return await usuarios.where('idUsuario', isEqualTo: idUsuario).get();
  }
}
