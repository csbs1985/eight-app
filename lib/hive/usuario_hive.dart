import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UsuarioHive {
  final Box<dynamic> _usuarioBox = Hive.box('usuario');

  bool verificarUsuarioHive() {
    return _usuarioBox.isNotEmpty;
  }

  Future<void> salvarUsuarioHive(Map<String, dynamic> usuarioData) async {
    await _usuarioBox.add(usuarioData);
  }

  Future<void> deletarUsuarioHive(String email) async {
    final usuario = _usuarioBox.values
        .firstWhere((item) => item['email'] == email, orElse: () => null);
    if (usuario != null) {
      final index = _usuarioBox.values.toList().indexOf(usuario);
      await _usuarioBox.deleteAt(index);
    }
  }

  Future<void> editarUsuarioHive(
      String email, String parametro, dynamic valor) async {
    final usuario = _usuarioBox.values
        .firstWhere((item) => item['email'] == email, orElse: () => null);
    if (usuario != null) {
      final index = _usuarioBox.values.toList().indexOf(usuario);
      final novoUsuario = usuario..[parametro] = valor;
      await _usuarioBox.putAt(index, novoUsuario);
    }
  }
}
