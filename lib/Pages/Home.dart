import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:actividad/Pages/pagesPokemon.dart';

class Home extends StatelessWidget {
  List<String> images = [
    "https://www.inti.tv/wp-content/uploads/2022/05/Que-es-la-verdadera-espiritualidad.jpg",
    "https://infolibros.org/wp-content/uploads/2020/11/Para-que-sirve-la-espiritualidad.jpg",
    "https://i0.wp.com/calo.com.ar/wp-content/uploads/2021/03/espiritualidad-aspecto-esencial-del-ser-humano.jpg?resize=700%2C450",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POKEMON"),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: PageView(
                  controller: PageController(
                    viewportFraction: 0.5,
                  ),
                  children: <Widget>[
                    PagesPokemon(Colors.green),
                    PagesPokemon(Colors.red),
                    PagesPokemon(Colors.purple),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(images[index], fit: BoxFit.cover),
                    );
                  },
                  itemWidth: 400,
                  itemCount: images.length,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  layout: SwiperLayout.STACK,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
