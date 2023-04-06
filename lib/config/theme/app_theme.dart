import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length - 1, 'Selected color must be less or equal to 0');

  ThemeData getTheme() => ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor]);
}
