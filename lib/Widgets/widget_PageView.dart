import 'dart:html';

import 'package:flutter/material.dart';

import 'package:actividad/Models/modelPokemon.dart';

List<Widget> Widget_PageView(List<ModelPokemons> data) {
  List<Widget> pokemons = [];

  for (var pokemon in data) {
    pokemons.add(
      Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              pokemon.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Image.network(
              pokemon.imageUrl,
              fit: BoxFit.fill,
            )),
          ],
        ),
      ),
    );
  }
  return (pokemons);
}
