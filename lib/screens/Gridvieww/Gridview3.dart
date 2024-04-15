import 'dart:math';
import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
       // crossAxisSpacing: 10,
       // mainAxisSpacing: 10,
        childAspectRatio: 1.5,
        children: List.generate(
            10,
            (index) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Center(
                      child: ListTile(
                          leading: Icon(
                            Icons.home,
                            size: 40,
                            color: Colors.grey[100],
                          ),
                          title: const Text(
                            "Heart Shaker",
                            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)
                          )),
                    ),
                  ),
                )),
      ),
    );
  }
}
