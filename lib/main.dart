import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/ListViewww/home1.dart';
import 'package:flutterfeb/screens/my%20map.dart';
import 'package:flutterfeb/screens/responsiveness/layout_builderr.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/views/shoedetails.dart';

import 'database/local storage/using shared preference/view/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoginShared(),
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
