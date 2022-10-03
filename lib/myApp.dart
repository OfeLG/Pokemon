import 'package:flutter/material.dart';

import 'package:actividad/Pages/Home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicación de Pokemon",
      initialRoute: "/",
      routes: {"/": (BuildContext context) => Home(title: "POKEMONS")},
    );
  }
}
