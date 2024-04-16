import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/Gridvieww/Gridview3.dart';
import 'package:flutterfeb/screens/Gridvieww/Gridview4.dart';
import 'package:flutterfeb/screens/Gridvieww/Gridview5.dart';
import 'package:flutterfeb/screens/Gridvieww/stagGrid2.dart';
import 'package:flutterfeb/screens/Gridvieww/stag_gridview.dart';
import 'package:flutterfeb/screens/registration.dart';
import 'package:flutterfeb/screens/splash_page_with_background_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OilProduct(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree
