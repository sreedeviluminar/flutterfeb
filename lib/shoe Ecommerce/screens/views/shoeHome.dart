import 'package:flutter/material.dart';
import 'package:flutterfeb/shoe%20Ecommerce/model/shoeHome.dart';
import 'package:flutterfeb/shoe%20Ecommerce/screens/widgets/shoeView.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: GoogleFonts.dekko(fontSize: 30),
        ),
      ),
      body: ListView.builder(
          itemCount:shoelist.length ,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: ()=> Navigator.pushNamed(
                   context,
                  "shoeDetails",
                   arguments: index
              ),
              child: ShoeView(
                imagepath: shoelist[index].image,
                title: shoelist[index].name,
              ),
            );
          }),
    );
  }
}
