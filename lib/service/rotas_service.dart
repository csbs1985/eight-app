import 'package:eight_app/theme/ui_duracao.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage transicaoPaginas<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: UiDuracao.transicaoPagina),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    ),
  );
}

enum RotasEnum {
  BUSCAR('/buscar'),
  ENTRAR('/entrar'),
  DOAR('/doar'),
  HISTORIA('historia'),
  INICIO('/inicio'),
  MENU('/menu'),
  NOTIFICACAO('notificacao'),
  PERFIL('perfil');

  final String value;
  const RotasEnum(this.value);
}
