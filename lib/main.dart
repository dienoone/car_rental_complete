import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/Booking/booking_screen.dart';
import 'Screens/History/history_screen.dart';
import 'Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutCarRent(),
    );
  }
}

class LayoutCarRent extends StatefulWidget {
  const LayoutCarRent({super.key});

  @override
  State<LayoutCarRent> createState() => _LayoutCarRentState();
}

class _LayoutCarRentState extends State<LayoutCarRent> {
  int visit = 0; // Track the currently selected tab

  final List<Widget> screens = [
    const HomeScreen(),
    const BookingScreen(),
    const HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[visit], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: visit,
        onTap: (index) {
          setState(() {
            visit = index; // Update the selected tab
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
