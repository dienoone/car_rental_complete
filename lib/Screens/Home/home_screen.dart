import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../../components/background_widget.dart';
import 'components/brands_widget.dart';
import 'components/hot_deals_widget.dart';
import 'components/search_text_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchInputController = TextEditingController();
    return Scaffold(
      body: Background(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            SearchTextField(searchInputController: searchInputController),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Text(
              "Brands",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const Brands(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot deals",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View All...",
                  style: GoogleFonts.poppins(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const CarCard()
          ],
        ),
      )),
    );
  }
}
