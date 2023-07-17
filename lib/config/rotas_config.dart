import 'package:eight_app/page/buscar_page.dart';
import 'package:eight_app/page/doar_page.dart';
import 'package:eight_app/page/historia_page.dart';
import 'package:eight_app/page/menu_page.dart';
import 'package:eight_app/page/notificacao_page.dart';
import 'package:eight_app/page/perfil_page.dart';
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
  // refreshListenable: _authService,
  // redirect: (context, state) async {
  //   final isAuthenticated = _authService.isAuthenticated;
  //   final isLoginRoute = state.matchedLocation == RotasEnum.ENTRAR.value;

  //   if (!isAuthenticated) return isLoginRoute ? null : RotasEnum.INICIO.value;
  //   if (isLoginRoute) return RotasEnum.INICIO.value;

  //   return null;
  // },
  routes: [
    GoRoute(
      path: RotasEnum.BUSCAR.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const BuscarPage(),
      ),
    ),
    GoRoute(
      path: RotasEnum.ENTRAR.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const EntrarPage(),
      ),
    ),
    GoRoute(
      path: RotasEnum.DOAR.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const DoarPage(),
      ),
    ),
    GoRoute(
      name: RotasEnum.HISTORIA.value,
      path: '/historia/:idHistoria',
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: HistoriaPage(idHistoria: state.pathParameters['idHistoria']!),
      ),
    ),
    GoRoute(
      path: RotasEnum.INICIO.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const InicioPage(),
      ),
    ),
    GoRoute(
      path: RotasEnum.MENU.value,
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: const MenuPage(),
      ),
    ),
    GoRoute(
      name: RotasEnum.NOTIFICACAO.value,
      path: '/notificacao/:idUsuario',
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: NotificacaoPage(idUsuario: state.pathParameters['idUsuario']!),
      ),
    ),
    GoRoute(
      name: RotasEnum.PERFIL.value,
      path: '/perfil/:idUsuario',
      pageBuilder: (context, state) => transicaoPaginas(
        context: context,
        state: state,
        child: PerfilPage(idUsuario: state.pathParameters['idUsuario']!),
      ),
    ),
  ],
);
