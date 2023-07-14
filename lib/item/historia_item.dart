// import 'package:eight_app/service/historia_service.dart';
// import 'package:flutter/widgets.dart';

// class HistoriaListaWidget extends StatefulWidget {
//   const HistoriaListaWidget({super.key});

//   @override
//   State<HistoriaListaWidget> createState() => _HistoriaListaWidgetState();
// }

// class _HistoriaListaWidgetState extends State<HistoriaListaWidget> {
//   final HistoriaService _historiaService = HistoriaService();

//   int index = 1;

//   @override
//   void initState() {
//     super.initState();
//     // _historiaService.pegarHistoria();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double altura = MediaQuery.sizeOf(context).height - (UiTamanho.appbar * 4);

//     return ValueListenableBuilder<CategoriaModel>(
//       valueListenable: currentCategoria,
//       builder: (BuildContext context, value, __) {
//         return Column(
//           children: [
//             FirestoreListView(
//               query: _historiaService.pegarHistoria(),
//               pageSize: 10,
//               shrinkWrap: true,
//               reverse: true,
//               physics: const NeverScrollableScrollPhysics(),
//               loadingBuilder: (context) => const HistoriaItemSkeleton(),
//               errorBuilder: (context, error, _) =>
//                   ErroResultadoWidget(altura: altura),
//               emptyBuilder: (context) => SemResultadoWidget(altura: altura),
//               itemBuilder: (
//                 BuildContext context,
//                 QueryDocumentSnapshot<dynamic> snapshot,
//               ) {
//                 return AnimationConfiguration.staggeredList(
//                   position: index++,
//                   duration: const Duration(milliseconds: 375),
//                   child: SlideAnimation(
//                     verticalOffset: 50,
//                     child: FadeInAnimation(
//                       child: HistoriaItemWidget(snapshot: snapshot.data()),
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const FimConteudoText(),
//           ],
//         );
//       },
//     );
//   }
// }
