import 'package:flutter/material.dart';
import 'package:flutterfeb/statemanagent/using%20provider/controller/themeController.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeController(),
    child: MyTheme(),
  ));
}

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeController>(context).dakTheme
          ? ThemeData.dark()
          : ThemeData.light(),
      home: ThemeChanger(),
    );
  }
}

class ThemeChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Provider.of<ThemeController>(context, listen: false)
                  .switchTheme();
            },
            child: Text("Change Theme")),
      ),
    );
  }
}
