import 'package:car_rental_mobile_app/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController searchInputController;
  const SearchTextField({super.key, required this.searchInputController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kGrey,
      controller: searchInputController,
      style: GoogleFonts.lato(),
      decoration: const InputDecoration(
          filled: true, //<-- SEE HERE
          alignLabelWithHint: false, //<-- SEE HERE
          fillColor: Colors.white,
          prefixIconColor: kGrey,
          suffixIconColor: kPrimaryColor,
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_alt),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kGrey),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: kGrey),
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    );
  }
}
