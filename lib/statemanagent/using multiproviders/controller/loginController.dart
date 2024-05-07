import 'package:flutter/material.dart';

class Login_Provider extends ChangeNotifier {

  bool _loggedIn = false;

  bool get login => _loggedIn;

  void logedin() {
    _loggedIn = true;
    notifyListeners();
  }
  void logedout() {
    _loggedIn = false;
    notifyListeners();
  }
}
