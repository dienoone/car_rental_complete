import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/history_model.dart';
import 'componemts/history_card_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title:  Text("Recent History",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: history.length,
            itemBuilder: (context, index) =>  HistoryCard(history:history[index]),
          ),
        ));
  }
}
