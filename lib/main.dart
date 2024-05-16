import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/sqflite_crud/task%20manager/views/taskSplash.dart';
import 'package:flutterfeb/screens/ListViewww/home1.dart';
import 'package:flutterfeb/screens/my%20map.dart';
import 'package:flutterfeb/screens/responsiveness/layout_builderr.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/views/shoedetails.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'database/local storage/simple_hive_Ex/hive_crud.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('contactBook');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ContactHive(),
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
