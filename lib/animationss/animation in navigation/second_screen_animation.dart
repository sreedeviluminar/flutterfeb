import 'package:flutter/material.dart';

class Second_animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child:ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("To Main")),
      )
    );
  }
}
