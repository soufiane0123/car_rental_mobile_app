import 'package:car_rental_mobile_app/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({super.key, 
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        ),
        onPressed: onClicked,
        child: Text(text,style: Theme.of(context).textTheme.bodySmall),
      ));
}