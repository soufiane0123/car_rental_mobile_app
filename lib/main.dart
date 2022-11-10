import 'package:car_rental_mobile_app/Screens/Booking/booking_screen.dart';
import 'package:car_rental_mobile_app/Screens/History/history_screen.dart';
import 'package:car_rental_mobile_app/Screens/Home/home_screen.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutCarRent()
    );
  }
}
class LayoutCarRent extends StatefulWidget {
  const LayoutCarRent({super.key});

  @override
  State<LayoutCarRent> createState() => _LayoutCarRentState();
}

class _LayoutCarRentState extends State<LayoutCarRent> {
  @override
  Widget build(BuildContext context) {
    var screens = [HomeScreen(),BookingScreen(),HistoryScreen()];
    int visit =0;
    return Scaffold(
        body: screens[visit],
        bottomNavigationBar:Container()
      );
  }
}
