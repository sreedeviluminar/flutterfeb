import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait ? ListScreen() : GridScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portrait Screen"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return  const Card(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.radar_rounded,size: 20,),
              Text("DATA FOR LIST ITEMS"),
              Icon(Icons.delete,size: 20,)
            ],
          ),
        );
      }),
    );
  }
}

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portrait Screen"),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        children: List.generate(
            30,
            (index) => Card(
              color: Colors.orange,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          //height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage("assets/images/pizza.png"))),
                        ),
                      ),
                      const Text(
                        'Pizza Mania',
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
