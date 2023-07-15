import 'package:eight_app/appbar/inicio_appBar.dart';
import 'package:eight_app/button/historia_button.dart';
import 'package:eight_app/list/historia_list.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:eight_app/widget/configuracao_drawer.dart';
import 'package:eight_app/widget/menu_widget.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(toolbarHeight: 0),
      drawer: const ConfiguracaoDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            actions: [Container()],
            toolbarHeight: UiTamanho.appBar2,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: InicioAppBar(callback: _scrollToTop),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const HistoriaButton(),
                const MenuWidget(),
                const HistoriaList(),
                Container(height: 10000)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
