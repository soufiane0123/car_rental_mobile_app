import 'package:car_rental_mobile_app/Colors.dart';
import 'package:car_rental_mobile_app/components/rounded_button_widget.dart';
import 'package:car_rental_mobile_app/components/rounded_button_widget_with_icon.dart';
import 'package:car_rental_mobile_app/components/text_form_field_widget.dart';
import 'package:car_rental_mobile_app/components/welcome_background_widget.dart';
import 'package:car_rental_mobile_app/validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailInput = TextEditingController();
    TextEditingController passwordInput = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: WelcomeBackground(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/logo_car.png",
          width: size.height / 3,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: size.height / 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0, // shadow direction: bottom right
              )
            ],
          ),
          height: size.height / 1.6,
          width: size.width / 1.2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Sign up to join",
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey),
                ),
                SizedBox(
                    width: 260,
                    height: 45,
                    child: TextFormFieldWidget(
                        controllerInput: emailInput,
                        validator: (value) => Validation.validateEmail(value),
                        label: "email",
                        icon: Icons.email_outlined)),
                SizedBox(
                    width: 260,
                    height: 45,
                    child: TextFormFieldWidget(
                        controllerInput: passwordInput,
                        validator: (value) =>
                            Validation.validatePassword(value),
                        label: "password",
                        icon: Icons.password)),
                RoundedButton(
                    text: "Sign up",
                    press: () {},
                    width: 260,
                    paddingVertical: 0,
                    borderRadius: 40),
                Text(
                  "OR",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey),
                ),
                RoundedButtonWithIcon(
                    text: "Sign up with facebook",
                    press: () {},
                    margin: 0,
                    width: 260,
                    borderRadius: 40,
                    color: kDarkBlue),
              ]),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "Have an account?",
                style: GoogleFonts.lato(
                  color: kGrey,
                ),
              ),
              TextSpan(text: 'Sign in',style: GoogleFonts.lato(
                  color: kPrimaryColor,
                ),),
            ],
          ),
        ),
      ],
    )));
  }
}
