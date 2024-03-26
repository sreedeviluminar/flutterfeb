import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Center(
          child: Icon(
        Icons.water_damage_outlined,
        size: 130,
        color: Colors.pink,
      )),
    );
  }
}
