import 'package:eight_app/model/categoria_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<CategoriaModel> currentCategoria =
    ValueNotifier<CategoriaModel>(listaCategoria.first);

ValueNotifier<Brightness> currentTema =
    ValueNotifier<Brightness>(Brightness.light);
