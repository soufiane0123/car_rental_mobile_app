import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -MediaQuery.of(context).size.height / 2.5,
            left: -MediaQuery.of(context).size.width / 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(MediaQuery.of(context).size.width),
                      bottomRight:
                          Radius.circular(MediaQuery.of(context).size.width))),
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
