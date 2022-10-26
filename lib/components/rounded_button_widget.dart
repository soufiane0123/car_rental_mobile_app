import 'package:car_rental_mobile_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  
  final String text;
  final double fontSize;
  final double borderRadius;
  final double paddingVertical;
  final double paddingHorizontal;
  final double margin;
  final double width;
  final double height;
  final FontWeight fontWeight;
  final Function press;
  final Color color, textColor;
  const RoundedButton({super.key, 
    this.width= 200,
    this.height= 45,
    this.borderRadius= 20,
    this.paddingVertical= 20,
    this.paddingHorizontal= 40,
    this.fontSize= 14,
    this.margin= 10,
    this.fontWeight= FontWeight.normal,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    
    return Center(child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize:Size(width, height),
          backgroundColor: kPrimaryColor,
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          textStyle: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w500)),
      onPressed: () => press(context),
      child: Text(
        text,
        style: GoogleFonts.poppins(color: textColor,fontWeight:fontWeight),
      ),
    ));
  }
}