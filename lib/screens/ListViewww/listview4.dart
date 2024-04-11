import 'package:flutter/material.dart';

class ListView_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom(
      /// way - 1
      childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person_outline_outlined),
                  ),
                  title: Text("Arun"),
                  subtitle: Text('9876543210'),
                  trailing: Icon(Icons.phone),
                ),
              ),
          childCount: 15),
    )

        /// way - 2
        //body: ListView.custom(
       // childrenDelegate: SliverChildListDelegate(
      //                    [Card(),Card(),...]),
        /// way - 3

        // body: ListView.custom(
        //     childrenDelegate: SliverChildListDelegate(
        //     List.generate( 10,
        //         (index) => const Card(
        //               child: ListTile(
        //                 leading: CircleAvatar(
        //                   backgroundColor: Colors.green,
        //                   child: Icon(Icons.person_outline_outlined),
        //                 ),
        //                 title: Text("Arun"),
        //                 subtitle: Text('9876543210'),
        //                 trailing: Icon(Icons.phone),
        //               ),
        //             )))),
        );
  }
}
