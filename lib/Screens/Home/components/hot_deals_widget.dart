import 'package:car_rental_mobile_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children : [
        SizedBox(
          width: MediaQuery.of(context).size.width,height: 233,
          child: Card(
            color: kWhiteGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("AUDI",
                    style: GoogleFonts.poppins(
                        color: kGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),),
                    Text("\$14.99",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700),)
                  ],
                ),
                 Text("Q7",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700),)
              ],
            ),
          ),
              ),
        ),
         Positioned(
          top: 34,
          left: 26,
          child: Image.asset("assets/images/car_preview.png")),
        ]
    );
  }
}
