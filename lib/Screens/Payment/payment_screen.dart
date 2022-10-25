import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60,left: 20,right: 20),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60) )),
          child: ExpansionPanelList.radio(initialOpenPanelValue: 2, children: [
            ExpansionPanelRadio(
                value: 1,
                headerBuilder: (context, isExpanded) => ListTile(
                leading: Image.asset("assets/images/payment method/mastercard.png"),
                    ),
                body: PaymentForm())
          ]),
        ),
      ),
    );
  }
}

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
