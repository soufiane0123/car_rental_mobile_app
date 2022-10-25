
import 'package:car_rental_mobile_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturesCard extends StatelessWidget {
  final String featuresname;
  final IconData icon;
  final String state;

  const FeaturesCard({
    super.key,
    required this.featuresname,
    required this.icon,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kDarklight,
      child: SizedBox(
        width: MediaQuery.of(context).size.width/3.6,
        height: MediaQuery.of(context).size.width/4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              featuresname,
              style: GoogleFonts.poppins(
                  color: kGrey, fontSize: 12, fontWeight: FontWeight.w500),
            ),
            Text(
              state,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
