import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class CustomScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            title: Text("MY Products"),
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                //color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search Here 🔍",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) => Card(
                        child: Text("Hello $index"),
                      ))),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                ElevatedButton(onPressed: () {}, child: Text("Veg")),
                ElevatedButton(onPressed: () {}, child: Text("Non Veg")),
                ElevatedButton(onPressed: () {}, child: Text("Salads"))
                            ],
                          ),
              )

              //Container(
              //   height: 200,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           fit: BoxFit.cover,
              //           image: AssetImage("assets/images/background.png"))),
              // ),
              ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/pizza.png",
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          '\$ 230',
                          style: MyTextThemes.bodyTextStyle,
                        ),
                      ],
                    ),
                  )),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20))
        ],
      )),
    );
  }
}
