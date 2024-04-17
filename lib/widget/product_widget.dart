import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class ProductTile extends StatelessWidget {
  final Color? color;
  final String? image;
  final String? title;
  final String? desc;
  final int? price;
  final VoidCallback click;

  ProductTile(
      {this.color,
      this.image,
      this.title,
      this.desc,
      this.price,
      required this.click});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 8,
        shadowColor: Colors.lightBlue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Image.asset(image!)),
            Text(title!, style: MyTextThemes.textHeading,),
            Text(desc!, style: MyTextThemes.bodyTextStyle,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('\$${price!}', style: TextStyle(fontSize: 20),),
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton( onPressed: click,
                          icon: Icon(Icons.favorite_border)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
