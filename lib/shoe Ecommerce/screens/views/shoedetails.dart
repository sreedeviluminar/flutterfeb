import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import '../../model/shoeHome.dart';

class ShoeDetails extends StatelessWidget {
 late Shoe shoe;
  @override
  Widget build(BuildContext context) {
    ///fetching the arguments passed from previous screen
    final index = ModalRoute.of(context)?.settings.arguments as int;
    /// setting the data from that particular index to shoe Object
    shoe = shoelist[index];

    return Scaffold(
      appBar: AppBar(
        title: Text('${shoe.name} Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(shoe.image ?? ""),
            Text(shoe.name ?? "", style: MyTextThemes.textHeading),
            Text(
              shoe.description ?? "",
              style: MyTextThemes.bodyTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
