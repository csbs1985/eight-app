import 'package:eight_app/class/rotas_class.dart';
import 'package:eight_app/page/entrar_page.dart';
import 'package:eight_app/page/inicio_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RotasEnum.ENTRAR.value,
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
