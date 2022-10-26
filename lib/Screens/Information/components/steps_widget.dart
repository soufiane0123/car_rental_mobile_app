import 'package:car_rental_mobile_app/Screens/Information/components/pike_image_widget.dart';
import 'package:car_rental_mobile_app/colors.dart';
import 'package:car_rental_mobile_app/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steps_indicator/steps_indicator.dart';

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  int selectedStep = 1;
  int nbSteps = 2;
  @override
  Widget build(BuildContext context) {
    TextEditingController licenceNumbercontroller = TextEditingController();
    TextEditingController expirydatecontroller = TextEditingController();
    TextEditingController fullnamecontroller = TextEditingController();
    TextEditingController phonenumbercontroller = TextEditingController();
    TextEditingController addresscontroller = TextEditingController();
    TextEditingController nationalidentiynumbercontroller =
        TextEditingController();
    return ListView(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        StepsIndicator(
          selectedStep: selectedStep,
          nbSteps: nbSteps,
          doneLineColor: kPrimaryColor,
          doneStepColor: kPrimaryColor,
          undoneLineColor: kGrey,
          unselectedStepColorOut: kGrey,
          selectedStepColorOut: kGrey,
          unselectedStepColorIn: Colors.white,
          lineLength: MediaQuery.of(context).size.width / 1.2,
          enableLineAnimation: true,
          enableStepAnimation: true,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        (selectedStep == 1)
            ? Column(
                children: [
                  Text("personal Data",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700)),
                          SizedBox(height: MediaQuery.of(context).size.height/30,),
                  TextFormField(
                    controller: fullnamecontroller,
                    decoration: inputDecoration("Full Name"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  TextFormField(
                    controller: phonenumbercontroller,
                    decoration: inputDecoration("Phone Number"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  TextFormField(
                    controller: addresscontroller,
                    decoration: inputDecoration("address"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  TextFormField(
                    controller: nationalidentiynumbercontroller,
                    decoration: inputDecoration("National Identiy Number"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/10,),
                  RoundedButton(
                      text: "Next",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      press: (context) {
                        if (selectedStep < nbSteps) {
                          setState(() {
                            selectedStep++;
                          });
                        }
                      }),
                ],
              )
            : Column(
                children: [
                  Text("Driving Licence",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700)),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  TextFormField(
                    controller: licenceNumbercontroller,
                    decoration: inputDecoration("Licence Number"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  TextFormField(
                    controller: expirydatecontroller,
                    decoration: inputDecoration("Expiry Date"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  Text(
                    "Upload your licence phone",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                  const PikeImage(),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                  RoundedButton(
                      text: "Check out",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      press: (context) {
                        
                      })
                ],
              ),
      ],
    );
  }

  InputDecoration inputDecoration(hinttext) {
    return InputDecoration(
      hintText: hinttext,
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: kGrey),
          borderRadius: BorderRadius.all(Radius.circular(0))),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: kGrey),
          borderRadius: BorderRadius.all(Radius.circular(0))),
    );
  }
}
