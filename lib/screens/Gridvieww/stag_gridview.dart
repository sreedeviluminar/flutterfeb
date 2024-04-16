import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stag_Grid_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered GridView"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: const [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Icon(
                      Icons.home,
                      size: 25,
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.red,
                  child: Center(
                    child: Icon(
                      Icons.star,
                      size: 25,
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.orange,
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.coffee,
                      size: 25,
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Card(
                  color: Colors.orange,
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.coffee,
                      size: 25,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
