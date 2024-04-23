import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/passing%20data%20between%20screens/using%20constructor/statefullScreen.dart';
import 'package:flutterfeb/screens/passing%20data%20between%20screens/using%20constructor/statelessScreen.dart';

class MainPage extends StatelessWidget {
  String name = "Tiger";
  String image = "assets/images/tiger.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatelessScreen(name: name, image: image)));
                },
                child: const Text("To State Less Screen")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatefulScreen(name: name, image: image)));
                },
                child: const Text("To Stateful Screen")),
          ],
        ),
      ),
    );
  }
}
