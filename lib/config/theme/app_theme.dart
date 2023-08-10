import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 131, 12, 205);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blueGrey,
  Colors.teal,
  Colors.lightGreen,
  Colors.yellowAccent,
  Colors.deepOrange,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 1})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
