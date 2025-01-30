import 'package:flutter/material.dart';

enum TileColors {
  color1(Color.fromRGBO(14, 44, 88, 1.0)),
  color2(Color.fromRGBO(0, 174, 255, 1.0)),
  color3(Color.fromRGBO(146, 233, 252, 1.0));

  final Color color;
  const TileColors(this.color);
}
