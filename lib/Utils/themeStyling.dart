import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeStyling{
   static var logoStyle = GoogleFonts.montserrat(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );
   static var titleStyle = GoogleFonts.montserrat(
    fontSize: 30.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  );
  static var todoTitleStyle = GoogleFonts.montserrat(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.2,
    decoration: TextDecoration.lineThrough
  );
}