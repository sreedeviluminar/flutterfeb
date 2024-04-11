import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ATMCard extends StatelessWidget {
  const ATMCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: 600,
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black.withOpacity(.8)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/pexels-jaymantri-5412.jpg"))),
              ),
              Positioned(
                  left: 30,
                  top: 30,
                  child: Text(
                    'world',
                    style:
                        GoogleFonts.caladea(fontSize: 30, color: Colors.white),
                  )),
              Positioned(
                  top: 40,
                  right: 50,
                  child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Icon(
                        Icons.wifi,
                        size: 40,
                        color: Colors.grey[500],
                      ))),
              const Positioned(
                  left: 30,
                  top: 80,
                  child: Icon(
                    Icons.nfc,
                    color: Colors.grey,
                    size: 60,
                  )),
              Positioned(
                  bottom: 20,
                  left: 30,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5412 7512 3412 3456',
                        style: GoogleFonts.caladea(
                            fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'VALID THRU',
                        style: GoogleFonts.caladea(
                            fontSize: 5, color: Colors.white),
                      ),
                      Text(
                        "12/23",
                        style: GoogleFonts.caladea(
                            fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'Lee M. Cardholder',
                        style: GoogleFonts.caladea(
                            fontSize: 20, color: Colors.white),
                      )
                    ],
                  )),
              Positioned(
                right: 60,
                top: 120,
                child: Text(
                  "debit",
                  style: GoogleFonts.caladea(fontSize: 20, color: Colors.white),
                ),
              ),
              Positioned(
                  right: 40,
                  bottom: 30,
                  child: Image.asset(
                    "assets/icons/mastercard.png",
                    height: 80,
                    width: 100,
                  )),
              Positioned(
                right: 40,
                bottom: 20,
                child: Text(
                  "mastercard",
                  style: GoogleFonts.caladea(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
