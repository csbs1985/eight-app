import 'package:eight_app/lista/categoria_lista.dart';

class CategoriaService {
  String pegarTextoCategoria(String item) {
    var categoria =
        listaCategoria.firstWhere((element) => element.idCategoria == item);

    return categoria.texto;
  }
}

enum CategoriaEnum {
  ALL('all'),
  ART('art'),
  ANIMALS('animals'),
  ASTROLOY('astrology'),
  ASTRONOMY('astronomy'),
  BEAUTY('beauty'),
  COMEDY('comedy'),
  CLIMATE_WEATHER('climate_weather'),
  CULTURE('culture'),
  DRINK('drink'),
  ENTERTAINMENT('entertainment'),
  EVENTS('events'),
  EXTRATERRESTRIAL('extraterrestrial'),
  FAMILY('family'),
  FASHION('fashion'),
  FOLKLORE('folklore'),
  FOOD('food'),
  GEOGRAPHY('geography'),
  HEALTH('health'),
  HORROR('horror'),
  INTERNET('internet'),
  JOB('job'),
  MONEY('money'),
  MUSIC('music'),
  MY('my'),
  PHOTOGRAPHY_VIDEO('photagraphy_video'),
  RELIGION('religion'),
  ROMANCE('romance'),
  BOOKMARK('bookmark'),
  SEX('sex'),
  SCIENCE('sciencie'),
  SPORTS('sports'),
  STUDIES('studies'),
  TATTOO_PIERCING('tattoo_piercing'),
  TECHNOLOGY('technology'),
  TRANSPORT('transport'),
  TV_MOVIES_SERIES('tv_movies_series'),
  VEHICLES('vehicles'),
  LIFE_DEATH('life_death'),
  VIOLENCE('violence'),
  SHAME('shame');

  final String value;
  const CategoriaEnum(this.value);
}
