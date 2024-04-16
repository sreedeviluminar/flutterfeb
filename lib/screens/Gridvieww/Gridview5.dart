import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/productModel.dart';

class GridView5 extends StatelessWidget {
  var data = [
    Data(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQDGlJV_qUVtCNjreNb0KZRTRBDNmcyXg5a6FNw4FjFg&s",
        name: "iPhone 13 pro",
        stringdata: "Mobile",
        extra: "\$1299",
        numdata: 999,
        offer: "20% off"),
    Data(
        image:
            "https://media.croma.com/image/upload/v1708675031/Croma%20Assets/Communication/Mobiles/Images/249858_5_sv3luz.png",
        name: "iPhone SE(PRODUCT)",
        stringdata: "Mobile",
        extra: "\$429",
        numdata: 399,
        offer: "15% off"),
    Data(
        image:
            "https://www.apple.com/newsroom/images/product/watch/standard/Apple_watch-series7-availability_watchOS-bloodoxygen_10052021_carousel.jpg.large.jpg",
        name: "Apple Watch Series 7",
        stringdata: "Watch",
        extra: "\$399",
        numdata: 199,
        offer: "50% off"),
    Data(
        image:
            "https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/p/r/productred_01_4.jpg",
        name: "Apple Watch SE",
        stringdata: "Watch",
        extra: "\$1299",
        numdata: 749,
        offer: "50% off"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.buttonColors,
        leading: const Icon(Icons.menu, color: Colors.white),
        title: Text(
          "Catalog App",
          style: GoogleFonts.robotoMono(fontSize: 30, color: Colors.white),
        ),
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .8, crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: data.length,
              (context, index) => Card(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.network(
                            data[index].image!,
                            fit: BoxFit.cover,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index].name!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                data[index].stringdata!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "${data[index].extra}",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                TextSpan(
                                    text: "  \$${data[index].numdata}",
                                    style: TextStyle(
                                        color: MyColors.buttonColors,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "  ${data[index].offer}",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]))
                            ],
                          ),
                          MaterialButton(
                            minWidth: 200,
                            color: MyColors.buttonColors,
                            height: 30,
                            shape: BeveledRectangleBorder(),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Add to cart",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
