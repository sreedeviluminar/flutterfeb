import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {

  bool _isDarkTheme = false;

  bool get dakTheme => _isDarkTheme;

  void switchTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
