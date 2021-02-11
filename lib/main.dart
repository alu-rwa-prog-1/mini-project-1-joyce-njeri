import 'package:flutter/material.dart';
import 'package:Grocery_App/screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(GroceryApp());

class GroceryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruity Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LandingPage(),
    );
  }
}
