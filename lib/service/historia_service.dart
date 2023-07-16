import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/firestore/historia_firestore.dart';
import 'package:eight_app/service/categoria_service.dart';

class HistoriaService {
  final HistoriaFirestore _historiaFirestore = HistoriaFirestore();

  pegarHistoria() {
    String categoria = currentCategoria.value.idCategoria;

    if (categoria == CategoriaEnum.ALL.value) {
      return _historiaFirestore.historias.orderBy('dataRegistro');
    } else if (categoria == CategoriaEnum.MY.value) {
      return _historiaFirestore.historias
          .orderBy('dataRegistro')
          .where('idUsuario', isEqualTo: currentUsuario.value.idUsuario);
    } else if (categoria == CategoriaEnum.BOOKMARK.value) {
      return _historiaFirestore.historias.orderBy('dataRegistro').where(
          'favoritos',
          arrayContainsAny: [currentUsuario.value.idUsuario]);
    } else {
      return _historiaFirestore.historias
          .orderBy('dataRegistro')
          .where('categorias', arrayContainsAny: [categoria]);
    }
  }

  limparCurrentHistoria() {
    // currentHistoria.value = HistoriaModel(
    //   idHistoria: '',
    //   titulo: '',
    //   texto: '',
    //   dataRegistro: '',
    //   idUsuario: '',
    //   isComentario: false,
    //   isAnonimo: false,
    //   isEditado: false,
    //   isAutorizado: false,
    //   qtdComentario: 0,
    //   categorias: [],
    // );
  }
}
