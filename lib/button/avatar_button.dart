import 'package:cached_network_image/cached_network_image.dart';
import 'package:eight_app/theme/ui_borda.dart';
import 'package:eight_app/theme/ui_imagem.dart';
import 'package:eight_app/theme/ui_tamanho.dart';
import 'package:flutter/material.dart';

class AvatarButton extends StatefulWidget {
  const AvatarButton({
    super.key,
    required String avatar,
    Function? callback,
    double? size,
  })  : _avatar = avatar,
        _callback = callback,
        _size = size;

  final Function? _callback;
  final String _avatar;
  final double? _size;

  @override
  State<AvatarButton> createState() => _AvatarButtonState();
}

class _AvatarButtonState extends State<AvatarButton> {
  void _onTap() {
    if (widget._callback != null) widget._callback!();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(UiBorda.avatar),
        child: CachedNetworkImage(
          imageUrl: widget._avatar,
          width: widget._size ?? UiTamanho.avatar,
          height: widget._size ?? UiTamanho.avatar,
          errorWidget: (context, url, error) => avatar(),
          placeholder: (context, imageProvider) => avatar(),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget avatar() {
    return SizedBox(
      width: widget._size ?? UiTamanho.avatar,
      height: widget._size ?? UiTamanho.avatar,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(UiBorda.avatar),
        child: Image.asset(
          UiImagem.avatar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
