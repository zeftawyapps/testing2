import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeColor with ChangeNotifier {
  Color _color = Colors.amber;

  Color get color => _color;

  set color(Color color) {
    _color = color;
    notifyListeners();
  }
}
