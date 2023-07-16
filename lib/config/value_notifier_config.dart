import 'package:eight_app/lista/categoria_lista.dart';
import 'package:eight_app/model/categoria_model.dart';
import 'package:eight_app/model/usuario_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<CategoriaModel> currentCategoria =
    ValueNotifier<CategoriaModel>(listaCategoria.first);

ValueNotifier<Brightness> currentTema =
    ValueNotifier<Brightness>(Brightness.light);

ValueNotifier<UsuarioModel> currentUsuario =
    ValueNotifier<UsuarioModel>(UsuarioModel(
  avatarUsuario:
      "https://scontent.fcgh3-1.fna.fbcdn.net/v/t39.30808-6/355123013_2270093176713400_4613544828911410935_n.jpg?_nc_cat=107&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEUuyawvAQk18HqAEK04fJWIXgc-eft21sheBz55-3bWyQyqy8G1BE1SVfuqgUUbxySDTyCaz2za1xOfNUMqoQL&_nc_ohc=oWVsad2uqIoAX9VDKOS&_nc_ht=scontent.fcgh3-1.fna&oh=00_AfChoL8WhhTibr4NVbxlhwKKioo9LHDollJhk4J6x_ApPg&oe=64B6DC13",
  biografia: '',
  email: '',
  idUsuario: '',
  dataRegistro: '',
  nomeUsuario: 'charles.sbs',
  situacaoConta: '',
  token: '',
  dataAtualizacaoNome: '',
  isNotificacao: false,
  qtdFavoritos: 0,
  qtdComentarios: 0,
  qtdDenuncias: 0,
  qtdHistorias: 0,
  bloqueados: [],
  favoritos: [],
  seguindo: [],
));
