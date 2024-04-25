import 'package:flutter/material.dart';
import 'package:flutterfeb/animationss/animation.dart';
import 'package:flutterfeb/animationss/heroAnimationn.dart';
import 'package:flutterfeb/screens/ListViewww/home1.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/views/shoeHome.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/views/shoedetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HeroMain(),
      ///define all the pages in the app with your own names
      routes: {
        'shoeDetails': (context) => ShoeDetails(),
        'homepage'   : (context) => HomePage1()
      },
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree
