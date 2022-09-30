import 'package:flutter/material.dart';

class PagesPokemon extends StatelessWidget {
  final Color color;
  const PagesPokemon(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
