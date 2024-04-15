import 'package:flutter/material.dart';

class GridView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 50,
        children: List.generate(
          100,
          (index) => Card(
            child: Icon(
              Icons.flare_outlined,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
