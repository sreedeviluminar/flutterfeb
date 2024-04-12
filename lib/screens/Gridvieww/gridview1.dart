import 'package:flutter/material.dart';

class GridvIew1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoe'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .8),
        children: List.generate(
            10,
            (index) => Card(
                  child: Column(
                    children: [
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0dpQBEwRFFGBPyQ5OTIt18eX4azQGUkspcAh89MG1Pg&s'),
                      Text('Puma'),
                      Text('\$1200')],
                  ),
                )),
      ),
    );
  }
}
