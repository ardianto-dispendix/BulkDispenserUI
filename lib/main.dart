import 'package:flutter/material.dart';
import 'package:bulk_dispenser/Constants.dart';
import 'package:bulk_dispenser/View/MainScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dispendix Bulk Dispenser Software',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          canvasColor: Colors.white,
        ),
        home: MainScreen());
  }
}
