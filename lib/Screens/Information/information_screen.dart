import 'package:car_rental_mobile_app/Screens/Information/components/steps_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("Information",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,)),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            FractionallySizedBox(
              heightFactor: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: const Steps(),
              ),
            ),
          ],
        ));
  }
}

