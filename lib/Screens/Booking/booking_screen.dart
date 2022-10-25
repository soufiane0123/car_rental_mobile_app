import 'package:car_rental_mobile_app/Colors.dart';
import 'package:car_rental_mobile_app/Screens/Booking/components/features_cards_widgets.dart';
import 'package:car_rental_mobile_app/Screens/Booking/components/header_car_detail_widget.dart';
import 'package:car_rental_mobile_app/Screens/Booking/components/price_and_booking_button_widget.dart';
import 'package:car_rental_mobile_app/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset("assets/images/bmw_x5.png"),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 20,
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(55))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const HeaderCarDetail(),
              Text(
                "\$24.99 per day",
                style: GoogleFonts.poppins(
                    color: kGrey, fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Text(
                "Features",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const FeaturesCards(),
              const PriceAndBookingButton()
            ]),
          ),
        ],
      ),
    );
  }
}


