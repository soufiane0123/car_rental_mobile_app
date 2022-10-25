
import 'package:car_rental_mobile_app/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    
    required this.controllerInput,
    required this.validator,
    this.obscureText = false,
    required this.label,
    this.icon=Icons.person_off_outlined,
  }) : super(key: key);

  final TextEditingController controllerInput;
  final String? Function(dynamic value) validator;
  final bool obscureText;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controllerInput,
        obscureText: obscureText,
       /* style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),*/
        decoration: InputDecoration(
          focusColor: Colors.white,
          //add prefix icon
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),

          // errorText: "Error",

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          fillColor: Colors.grey,

          hintText: "Your $label",

          //make hint text
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),

          //create lable
          labelText: label,
          //lable style
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
        validator: validator);
  }
}
