import 'dart:ui';
import 'package:flutter/material.dart';

abstract class AppFontStyle {
  static const TextStyle biggest_heading = TextStyle(
    color: Color(0xFF5f5f5f),
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 5,
  );

  static const TextStyle button_text = TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      letterSpacing: 5,
      color: Color(0xFFf8f8f8d9));

  static const TextStyle poppins_500_14 = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 3,
      color: Color(0xFF5f5f5f));

  static const TextStyle poppins_500_14_white = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 3,
      color: Colors.white);

  static const TextStyle poppins_400_12 = TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 2,
      color: Color(0xFF5f5f5f));

  static const TextStyle poppins_500_12_caramel = TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 2,
      color: Color.fromRGBO(217, 208, 201, 1));

  static const TextStyle poppins_400_14_hint = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 2,
      color: Color.fromRGBO(112, 108, 105, 1));

  static const TextStyle poppins_500_16_subheader = TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 3,
      color: Color.fromRGBO(103, 103, 103, 1));

  static const TextStyle rateNumber = TextStyle(
      fontFamily: "Poppins",
      fontSize: 48,
      fontWeight: FontWeight.w500,
      letterSpacing: 3,
      color: Color.fromRGBO(103, 103, 103, 1));

  static const TextStyle calcValues = TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 2,
      color: Color.fromRGBO(103, 103, 103, 1));
}
