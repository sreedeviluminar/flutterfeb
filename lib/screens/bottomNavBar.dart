import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/Gridvieww/Gridview3.dart';
import 'package:flutterfeb/screens/Gridvieww/Gridview5.dart';
import 'package:flutterfeb/screens/atmcard%20using%20stack.dart';
import 'package:flutterfeb/screens/cslider.dart';
import 'package:flutterfeb/screens/stackEx.dart';
import 'package:flutterfeb/utils/mycolors.dart';

import 'Gridvieww/Gridview4.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> screens = [
    StackEx(),
    CSlider(),
    GridView3(),
    GridView5(),
    GridView4()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.basicColor,
        title: const Text('Bottom Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.basicColor,
          selectedItemColor: Colors.white,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
              ///initially index = 0 when we tap on one bottom
              ///nav bar item index value will update
            });
          },
          items: const [
            BottomNavigationBarItem(
               backgroundColor:Colors.red,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"),
          ]),
      body: screens[index],
    );
  }
}
