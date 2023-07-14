import 'package:eight_app/service/auth_service.dart';
import 'package:eight_app/service/rotas_service.dart';
import 'package:eight_app/page/entrar_page.dart';
import 'package:eight_app/page/inicio_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AuthService _authService = AuthService();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter routes = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RotasEnum.INICIO.value,
  refreshListenable: _authService,
  redirect: (context, state) async {
    final isAuthenticated = _authService.isAuthenticated;
    final isLoginRoute = state.matchedLocation == RotasEnum.ENTRAR.value;

    if (!isAuthenticated) return isLoginRoute ? null : RotasEnum.INICIO.value;
    if (isLoginRoute) return RotasEnum.INICIO.value;

    return null;
  },
  routes: [
    GoRoute(
      path: RotasEnum.ENTRAR.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const EntrarPage(),
      ),
    ),
    // GoRoute(
    //   path: RotasEnum.HISTORICO.value,
    //   pageBuilder: (context, state) => transicaoPaginas(
    //     context: context,
    //     state: state,
    //     child: const HistoricoPage(),
    //   ),
    // ),
    GoRoute(
      path: RotasEnum.INICIO.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const InicioPage(),
      ),
    ),
  ],
);
