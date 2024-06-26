import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterfeb/widget/product_widget.dart';

class OilProduct extends StatelessWidget {
  const OilProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/pineapple.png",
                title: "PineApple",
                desc: "PineApple is a super tasty fruit",
                price: 120,
                click: () {},
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 3,
              child: ProductTile(
                color: Colors.grey,
                image: "assets/images/salad.png",
                title: "Salad",
                desc: "Salad is a super healthy food",
                price: 120,
                click: () {},
              ))
        ],
      )),
    );
  }
}
