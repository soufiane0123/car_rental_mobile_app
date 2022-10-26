// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentMethod {
  final int id;
  final String imagepath;
  PaymentMethod({
    required this.id,
    required this.imagepath,
  });
}

List<PaymentMethod> paymentmethods = [
  PaymentMethod(id: 1, imagepath: "assets/images/payment method/mastercard.png"),
  PaymentMethod(id: 2, imagepath: "assets/images/payment method/visa.png"),
  PaymentMethod(id: 3, imagepath: "assets/images/payment method/paypal.png"),
  PaymentMethod(id: 4, imagepath: "assets/images/payment method/American.png"),
];
