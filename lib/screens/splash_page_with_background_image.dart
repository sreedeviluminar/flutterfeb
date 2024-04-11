import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/ListViewww/home1.dart';
import 'package:flutterfeb/screens/ListViewww/listview%20using%20builder.dart';
import 'package:flutterfeb/screens/ListViewww/listview2.dart';
import 'package:flutterfeb/screens/ListViewww/listview4.dart';
import 'package:flutterfeb/screens/atmcard%20using%20stack.dart';
import 'package:flutterfeb/screens/login_page.dart';
import 'package:flutterfeb/screens/stackEx.dart';
import 'package:google_fonts/google_fonts.dart';
//to set background image or color or gradient for a screen

class Splash_with_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ATMCard()));
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.greenAccent,
                Colors.green,
                Colors.black,
                Colors.green,
                Colors.greenAccent,
                Colors.white
              ]),

          //     image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage("assets/images/background.png"),
          //   /// OR
          //   //image: NetworkImage("https://images.unsplash.com/photo-1499980762202-04245017d5bf?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjl8fHxlbnwwfHx8fHw%3D")
          // )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/icons/appicon.png")),
              Text("MyApp",

                  ///style using google fonts
                  style: GoogleFonts.ibarraRealNova(
                    fontSize: 70,
                    color: Colors.greenAccent,
                  )

                  ///style using default textstyle
                  // style: TextStyle(
                  //     fontSize: 70,
                  //     fontStyle: FontStyle.italic,
                  //     color: Colors.green),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
