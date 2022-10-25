import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCarDetail extends StatelessWidget {
  const HeaderCarDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "BMW X5",
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.orangeAccent,
              size: 25,
            ),
            Text("4.8",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
          ],
        )
      ],
    );
  }
}
