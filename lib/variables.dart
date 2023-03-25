import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSettings {
  static Color mainColor = Color.fromARGB(255, 247, 76, 67);
  static Color mainColorLignt = const Color.fromARGB(255, 199, 81, 75);
  static TextStyle textStyle({
    double size = 16,
    FontWeight weight = FontWeight.normal,
    Color textColor = Colors.black,
  }) {
    return GoogleFonts.ptSerif(
      fontSize: size,
      fontWeight: weight,
      color: textColor,
    );
  }
}