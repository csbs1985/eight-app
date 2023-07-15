import 'package:eight_app/config/value_notifier_config.dart';
import 'package:eight_app/lista/categoria_lista.dart';
import 'package:eight_app/model/categoria_model.dart';
import 'package:eight_app/service/texto_service.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final TextoService _textoService = TextoService();

  bool _isMostrar(CategoriaModel item) {
    return item.isDesabilitada ? false : true;
  }

  void _selecionarItem(CategoriaModel item) {
    setState(() => currentCategoria.value = item);
  }

  bool _itemSelecionado(CategoriaModel item) {
    return currentCategoria.value.idCategoria == item.idCategoria
        ? true
        : false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UiTamanho.appBar2,
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: listaCategoria.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _isMostrar(listaCategoria[index])
              ? ValueListenableBuilder(
                  valueListenable: currentTema,
                  builder: (context, tema, _) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: _itemSelecionado(listaCategoria[index])
                                ? Theme.of(context).colorScheme.onTertiary
                                : Theme.of(context).colorScheme.onSecondary,
                            width: 1, // Espessura da borda
                          ),
                        ),
                      ),
                      child: GestureDetector(
                        child: Center(
                          child: Text(
                            _textoService
                                .capitalize(listaCategoria[index].texto),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        onTap: () => _selecionarItem(listaCategoria[index]),
                      ),
                    );
                  },
                )
              : Container();
        },
      ),
    );
  }
}
