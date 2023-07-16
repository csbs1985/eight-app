import 'package:eight_app/button/avatar_button.dart';
import 'package:eight_app/config/texto_config.dart';
import 'package:eight_app/service/data_service.dart';
import 'package:flutter/material.dart';

class HistoriaInfoWidget extends StatefulWidget {
  const HistoriaInfoWidget({
    super.key,
    required Map<String, dynamic> item,
    bool? isAvatar = true,
  })  : _item = item,
        _isAvatar = isAvatar;

  final Map<String, dynamic> _item;
  final bool? _isAvatar;

  @override
  State<HistoriaInfoWidget> createState() => _InfoTextState();
}

class _InfoTextState extends State<HistoriaInfoWidget> {
  final DataService _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget._isAvatar == true)
          Row(
            children: [
              AvatarButton(
                avatar: widget._item['avatarUsuario'],
                size: 12,
              ),
              const SizedBox(width: 4),
              Text(
                widget._item['nomeUsuario'],
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Text(' · '),
            ],
          ),
        Text(
          _dataService.dataFormatar(widget._item['dataRegistro']),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        if (widget._item['isEditado'])
          Text(
            ' · $EDITADO',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        if (widget._item['isAutorizado'])
          Text(
            ' · ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        if (widget._item['isAutorizado'])
          const Icon(
            Icons.recommend_outlined,
            size: 14,
          ),
      ],
    );
  }
}
