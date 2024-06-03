import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import '../model/productModel.dart';

class ProductTiles extends StatelessWidget {
   final Products product;
   ProductTiles(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: CachedNetworkImage(
                imageUrl: product.image!),
          ),
          const SizedBox(height: 10,),
          Text(product.title!,
            style: MyTextThemes.textHeading,
            maxLines: 2,
          ),
          Text('\$${product.price}',
          style: MyTextThemes.bodyTextStyle,)
        ],
      ),
    );
  }
}
