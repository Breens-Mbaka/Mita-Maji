import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF9067C6);
  static const Color secondaryColor = Color(0xFFE6E3E3);
  static const Color tertiaryColor = Color(0xFFF7ECE1);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';

  static TextStyle get title1 => GoogleFonts.getFont(
        'Dosis',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 36,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Dosis',
        color: Color(0xFF242038),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Dosis',
        color: Color(0xFF9067C6),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Dosis',
        color: Color(0xFF9067C6),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Dosis',
        color: tertiaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 13,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Dosis',
        color: Color(0xFF9067C6),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Dosis',
        color: Color(0xFF242038),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override(
          {String fontFamily,
          Color color,
          double fontSize,
          FontWeight fontWeight,
          FontStyle fontStyle}) =>
      GoogleFonts.getFont(
        fontFamily,
        color: color ?? this.color,
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        fontStyle: fontStyle ?? this.fontStyle,
      );
}
