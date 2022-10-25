
import 'package:car_rental_mobile_app/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceAndBookingButton extends StatelessWidget {
  const PriceAndBookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "\$24.99",
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        RoundedButton(text: "Book now", press: (context) {}, fontSize: 18, width: 160, borderRadius: 40,fontWeight: FontWeight.w700,)
      ],
    );
  }
}
