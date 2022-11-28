import 'package:flutter/material.dart';

Widget fondoApp() {
  final gradient = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
      Color.fromARGB(255, 152, 89, 171),
      Color.fromARGB(255, 201, 130, 125),
    ])),
  );

  return Stack(
    children: <Widget>[gradient],
  );
}
