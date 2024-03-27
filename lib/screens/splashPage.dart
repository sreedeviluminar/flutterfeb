import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        ///body as external icon / image
        body: Center(
          //child: Image(image: AssetImage("assets/icons/appicon.png")),
          //     child: Image(image: NetworkImage(
          //       "https://icons.iconarchive.com/icons/iconarchive/wild-camping/256/Waterfall-icon.png"),
          //   height: 300,
          //   width: 300,
          // )
          ///body as external animation with external package
          ///child: Lottie.asset('assets/animations/appanimatedicon.json'),
          child: Lottie.network("https://lottie.host/815831d5-2eba-4fb6-9a21-bdaebae3e95c/n8pK3fFcxM.json"),
        )

        ///scaffold body as built in icon
        // body: Center(
        //     child: Icon(
        //   Icons.water_damage_outlined,
        //   size: 130,
        //   color: Colors.pink,
        // )),
        );
  }
}
