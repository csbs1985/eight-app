import 'package:eight_app/button/avatar_button.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:flutter/material.dart';

class HistoriaButton extends StatefulWidget {
  const HistoriaButton({super.key});

  @override
  State<HistoriaButton> createState() => _HistoriaButtonState();
}

class _HistoriaButtonState extends State<HistoriaButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UiTamanho.appBar,
      // color: Colors.amber,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        children: [
          AvatarButton(
            avatar:
                "https://scontent.fcgh3-1.fna.fbcdn.net/v/t39.30808-6/355123013_2270093176713400_4613544828911410935_n.jpg?_nc_cat=107&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEUuyawvAQk18HqAEK04fJWIXgc-eft21sheBz55-3bWyQyqy8G1BE1SVfuqgUUbxySDTyCaz2za1xOfNUMqoQL&_nc_ohc=oWVsad2uqIoAX9VDKOS&_nc_ht=scontent.fcgh3-1.fna&oh=00_AfChoL8WhhTibr4NVbxlhwKKioo9LHDollJhk4J6x_ApPg&oe=64B6DC13",
            callback: () => print("funciona!"),
          ),
          const SizedBox(width: 8),
          // Expanded(
          //   child: ValueListenableBuilder(
          //     valueListenable: currentTema,
          //     builder: (BuildContext context, Brightness tema, _) {
          //       bool isDark = tema == Brightness.dark;

          //       return GestureDetector(
          //         onTap: () => _abrirModal(context),
          //         child: Container(
          //           alignment: Alignment.centerLeft,
          //           height: 40,
          //           decoration: BoxDecoration(
          //             color: isDark ? UiCor.bordaEscura : UiCor.borda,
          //             borderRadius: BorderRadius.circular(UiBorda.circulo),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.only(left: 16),
          //             child: Text(
          //               CRIAR_BOTAO,
          //               style: Theme.of(context).textTheme.bodySmall,
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
