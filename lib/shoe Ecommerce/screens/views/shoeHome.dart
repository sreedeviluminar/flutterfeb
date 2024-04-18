import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfeb/shoe%20Ecommerce/model/shoeHome.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/widgets/shoeView.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeHome extends StatelessWidget {
  const ShoeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: GoogleFonts.dekko(fontSize: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration:  const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                )
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  height: 150,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.linear)),
          Text(
            "Running Shoes",
            style:
                GoogleFonts.dekko(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: home.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ShoeView(
                        imagepath: home[index].image,
                        title: home[index].name,
                        cat: home[index].category,
                        price: home[index].price,
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
