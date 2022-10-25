
import 'package:car_rental_mobile_app/Models/brand_model.dart';
import 'package:flutter/material.dart';

class BrandsCard extends StatelessWidget {
  final BrandsModel brand;
  const BrandsCard({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        brand.imagepath,
        width: 70,
        height: 70,
      ),
    );
  }
}
