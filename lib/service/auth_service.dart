import 'package:eight_app/hive/usuario_hive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final UsuarioHive _usuarioHive = UsuarioHive();

  User? usuario;

  bool isAuthenticated = false;

  AuthService() {
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isAuthenticated = user == null ? false : true;
      notifyListeners();
    });
  }
}
