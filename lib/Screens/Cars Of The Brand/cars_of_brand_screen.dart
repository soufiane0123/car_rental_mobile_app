import 'package:car_rental_mobile_app/Screens/Home/components/brands_widget.dart';
import 'package:car_rental_mobile_app/Screens/Home/components/hot_deals_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsOfBrandScreen extends StatelessWidget {
  const CarsOfBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brands",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const Brands(),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: 10,
                  itemBuilder: (context, index) => const CarCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
