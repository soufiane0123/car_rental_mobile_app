import 'package:car_rental_mobile_app/Colors.dart';
import 'package:car_rental_mobile_app/Models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HistoryCard extends StatelessWidget {
  final HistoryModel history;
  const HistoryCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.8, color: kGrey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 0.8, color: kGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(history.imagePath)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              history.name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Text(
              DateFormat.yMMMMd().format(history.date),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 14, color: kGrey),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${history.price}",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            (history.numberOfDay == "1")
                ? Text(
                    "${history.numberOfDay} DAY",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: kGrey),
                  )
                : Text(
                    "${history.numberOfDay} DAYS",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: kGrey),
                  ),
          ],
        ),
      ),
    );
  }
}
