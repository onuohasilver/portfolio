import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/core/utilities/sizing.dart';

class AppColors {
  static const darkBlue = Color(0xFF007AFF);
  static const lightBlue = Color(0xFF3534a3);
  static const grayBlue = Color(0xFF061338);
}

class AppFonts {
  AppFonts(this.size);
  final SizeReference size;

  subtitle(double multiplier,
          {Color? color = Colors.white,
          List<Shadow>? shadows,
          double height = 1.0,
          FontStyle? fontStyle,
          FontWeight? fontWeight}) =>
      GoogleFonts.titilliumWeb(
          color: color,
          shadows: shadows,
          fontSize: size.w * multiplier,
          fontStyle: fontStyle,
          height: height,
          fontWeight: fontWeight);
}
