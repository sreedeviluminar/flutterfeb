import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class HiveHome extends StatelessWidget {
  String? name;

  HiveHome(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "Welcome $name",
          style: MyTextThemes.textHeading,
        ),
      ),
    );
  }
}
