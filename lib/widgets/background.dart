import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.2,
        0.8
      ],
          colors: [
        Color.fromARGB(255, 61, 63, 125),
        Color.fromARGB(255, 25, 27, 42)
      ]));
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //color de fondo
          decoration: boxDecoration,
          //caja rosada
        ),
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
          width: 420,
          height: 420,
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1),
              ]))),
    );
  }
}
