import 'package:car_rental_mobile_app/Screens/Booking/components/features_card_widget.dart';
import 'package:flutter/material.dart';

class FeaturesCards extends StatelessWidget {
  const FeaturesCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children:const [
         FeaturesCard(icon: Icons.speed, featuresname: "TOP SPEED", state: "280 km/h"),
         FeaturesCard(icon: Icons.wifi, featuresname: "Wifi", state: "Availabe"),
         FeaturesCard(icon: Icons.person, featuresname: "SEATS", state: "4"),
         FeaturesCard(icon: Icons.sensors, featuresname: "SENSOR", state: "Availabe"),
         FeaturesCard(icon: Icons.bluetooth, featuresname: "BLUETOOTH", state: "4.0"),
         FeaturesCard(icon: Icons.door_front_door, featuresname: "DOORS", state: "4"),
      ],
    );
  }
}
