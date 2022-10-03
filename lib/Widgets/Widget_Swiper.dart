import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:actividad/Models/modelPokemon.dart';

Widget Widget_Swiper(List<ModelPokemons> data) {
  return Swiper(
    itemBuilder: (BuildContext context, int index) {
      return ClipRRect(
        child: Image.network(data[index].imageUrl, fit: BoxFit.cover),
      );
    },
    itemWidth: 400,
    itemCount: 20,
    viewportFraction: 0.8,
    scale: 0.9,
    layout: SwiperLayout.STACK,
  );
}
