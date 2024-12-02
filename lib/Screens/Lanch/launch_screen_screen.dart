
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_car.png"),
          Text(
            "RCARENTAL",
            style: GoogleFonts.lato(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                color: Colors.white),
          )
        ],
      )),
    );
  }
}
