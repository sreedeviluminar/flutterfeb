import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerEx'),
        iconTheme: const IconThemeData(color: Colors.purple),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(.3),
        child: ListView(
        children: [
           UserAccountsDrawerHeader(
            decoration: BoxDecoration(
               color: Colors.black.withOpacity(.3)),
            accountName: const Text("Luminar Technologies"),
            accountEmail: const Text("contact@luminartechnolab.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://play-lh.googleusercontent.com/h9JoU3a5P3pZYLXJApV47mIkjr08l7fE_B-Ou7XYqNrEpXHB_44X2awX3ebiqHoI6GA=w240-h480-rw"),
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/unknown-man-posing-studio-side-view_23-2149417619.jpg"),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/close-up-portrait-young-man-black-studio_155003-28363.jpg?w=826&t=st=1713760276~exp=1713760876~hmac=96d0ddf28918e21e6b94da0f5a31e007d26745c4ade3e7e01db45d0509142536"),
              ),
            ],
          ),
          listItems(),
        ],
                ),
      ),
    );
  }

  Widget listItems() {
    return Column(
        children: List.generate(5, (index) =>
        const ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ))
    );
  }
}
