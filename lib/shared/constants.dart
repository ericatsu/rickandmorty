import 'package:flutter/material.dart';

class Palette {
  static const Color kPrimaryColor = Color(0xff01B0CB);
  static const Color kPrimaryLight = Color.fromARGB(255, 118, 175, 184);
  static Color black40 = const Color(0xFF200E32).withOpacity(.4);
  static Color black80 = const Color(0xFF200E32).withOpacity(.8);
  static LinearGradient linecolor = LinearGradient(
          colors: [Colors.teal, Colors.green],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        );
}

Shader authColors = const LinearGradient(
  colors: <Color>[Color.fromARGB(255, 0, 129, 116), Color.fromARGB(255, 157, 240, 160)],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class Images {
  static const String imagesPath = 'assets/images/';
  static const String splash = '${imagesPath}splash.png';
}
