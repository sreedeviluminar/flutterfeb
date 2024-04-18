import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeView extends StatelessWidget {
  final String? imagepath;
  final String? title;
  final String? cat;
  final int? price;

  ShoeView({this.imagepath, this.title, this.cat, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imagepath!)))),
        Text(
          title!,
          style: GoogleFonts.dekko(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          cat!,
          style: GoogleFonts.dekko(
              fontSize: 20, color: Colors.black38, fontWeight: FontWeight.bold),
        ),
        Text(
          '\$${price!}',
          style: GoogleFonts.dekko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
