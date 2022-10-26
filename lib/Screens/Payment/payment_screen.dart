// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_mobile_app/colors.dart';
import 'package:car_rental_mobile_app/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:car_rental_mobile_app/Models/payment_method_model.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cardnumbercontroller = TextEditingController();
    TextEditingController cardholdernamecontroller = TextEditingController();
    TextEditingController carddatecontroller = TextEditingController();
    TextEditingController cardcvvcontroller = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("Payment",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,)),
          centerTitle: true,
        ),
        body: Stack(
          children: [
           
            FractionallySizedBox(
              heightFactor: 1,
              child:  Container(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child:SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExpansionPanelList.radio(
                        initialOpenPanelValue: 2,
                        children: paymentmethods
                            .map<ExpansionPanelRadio>(
                                (paymentmethod) => ExpansionPanelRadio(
                                    value: paymentmethod.id,
                                    headerBuilder: (context, isExpanded) => ListTile(
                                          leading: Image.asset(paymentmethod.imagepath),
                                        ),
                                    body: PaymentForm(
                                      cardnumbercontroller: cardnumbercontroller,
                                      cardholdernamecontroller: cardholdernamecontroller,
                                      carddatecontroller: carddatecontroller,
                                      cardcvvcontroller: cardcvvcontroller,
                                    )))
                            .toList(),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/8,)
                    ],
                  ),
                ),
              ),
            ),
             Positioned(
             bottom: 0,
             left: MediaQuery.of(context).size.width/4,
            child:RoundedButton(text: "Pay now",fontWeight: FontWeight.w700,fontSize: 18 ,press: (context){}))
          ],
        ));
  }
}

class PaymentForm extends StatelessWidget {
  final TextEditingController cardnumbercontroller;
  final TextEditingController cardholdernamecontroller;
  final TextEditingController carddatecontroller;
  final TextEditingController cardcvvcontroller;
  const PaymentForm({
    Key? key,
    required this.cardnumbercontroller,
    required this.cardholdernamecontroller,
    required this.carddatecontroller,
    required this.cardcvvcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            controller: cardnumbercontroller,
            decoration: inputDecoration("Card Number"),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          TextFormField(
            controller: cardholdernamecontroller,
            decoration: inputDecoration("Card Holder’s Name"),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Row(
            children: [
              Flexible(
                  child: TextFormField(
                controller: carddatecontroller,
                decoration: inputDecoration("DD/MM/YY"),
              )),
              Flexible(
                  child: TextFormField(
                controller: cardcvvcontroller,
                decoration: inputDecoration("CVV"),
              )),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
          Row(
            children: [
              const Icon(Icons.check_circle, color:Colors.green),
              Text("Save Card Information" , style: GoogleFonts.poppins(fontSize: 14, color: kGrey,fontWeight: FontWeight.w400),)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/100,),
        ],
      )),
    );
  }

  InputDecoration inputDecoration(hinttext) {
    return InputDecoration(
          hintText: hinttext,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: kGrey),
            borderRadius: BorderRadius.all(Radius.circular(0))
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: kGrey),
            borderRadius: BorderRadius.all(Radius.circular(0))
          ),
        );
  }
}
