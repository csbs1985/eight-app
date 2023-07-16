import 'package:eight_app/service/categoria_service.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class HistoriaItem extends StatefulWidget {
  const HistoriaItem({
    super.key,
    required Map<String, dynamic> snapshot,
  }) : _historia = snapshot;

  final Map<String, dynamic> _historia;

  @override
  State<HistoriaItem> createState() => _HistoriaItemState();
}

class _HistoriaItemState extends State<HistoriaItem> {
  final CategoriaService _categoriaService = CategoriaService();

  Future<void> _definirUsuario() async {}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _definirUsuario(),
      builder: (BuildContext context, _) {
        return InkWell(
          onTap: () => {},
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(UiEspaco.normal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget._historia['titulo'],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: UiEspaco.pequeno),
                    Text(
                      widget._historia['texto'],
                      maxLines: 10,
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: UiEspaco.pequeno),
                    Wrap(
                      children: [
                        for (var item in widget._historia['categorias'])
                          Padding(
                            padding:
                                const EdgeInsets.only(right: UiEspaco.pequeno),
                            child: Text(
                              "#${_categoriaService.pegarTextoCategoria(item)}",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }
}
