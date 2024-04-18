import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/tabEx.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/views/shoeHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeHome(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree
