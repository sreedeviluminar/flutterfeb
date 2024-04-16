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
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image!),
          Text(title!, style: MyTextThemes.textHeading,),
          Text(desc!, style: MyTextThemes.bodyTextStyle,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('\$${price!}', style: TextStyle(fontSize: 20),),
              CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton( onPressed: click,
                      icon: Icon(Icons.favorite_border)))
            ],
          )
        ],
      ),
    );
  }
}
