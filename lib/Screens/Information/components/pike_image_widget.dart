// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:car_rental_mobile_app/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class PikeImage extends StatefulWidget {
  const PikeImage({super.key});

  @override
  State<PikeImage> createState() => _PikeImageState();
}

// ignore: duplicate_ignore
class _PikeImageState extends State<PikeImage> {

  Future _PikeImage(ImageSource source) async {
    try {
      XFile? pikedImage = await ImagePicker().pickImage(source: source);
      if (pikedImage == null) return;
      setState(() {
      });
    } on PlatformException catch (e) {
      print("Failed to pick image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                //height: MediaQuery.of(context).size.height / 3,
                //width: MediaQuery.of(context).size.width/3,
                color: const Color.fromARGB(55, 182, 182, 182),
                child: PikeImage(ImageSource.gallery, "Gallery", Icons.image),
                // PikeImage(ImageSource.camera, "Camera", Icons.camera_alt)
              ),
            )),
        DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                  // height: MediaQuery.of(context).size.height / 3,
                  //width: MediaQuery.of(context).size.width/3,
                  color: const Color.fromARGB(55, 182, 182, 182),
                  child:
                      // PikeImage(ImageSource.gallery, "Gallery", Icons.image),
                      PikeImage(
                          ImageSource.camera, "Camera", Icons.camera_alt)),
            )),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Center PikeImage(ImageSource source, String text, IconData icon) {
    return Center(
      child: TextButton(
          onPressed: () {
            _PikeImage(source);
          },
          child: Column(
            children: [
              Icon(icon, color: kPrimaryColor),
              Text(
                text,
                style: GoogleFonts.roboto(color: kPrimaryColor),
              )
            ],
          )),
    );
  }
}
