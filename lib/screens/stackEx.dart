import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Positioned(
            left: 280,
            top: 120,
            child: Container(
              color: Colors.green,
              height: 80,
              width: 80,
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 80,
            width: 80,
          )
        ],
      ),
    );
  }
}
