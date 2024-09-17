import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/tools.dart';

TextStyle headerBigMobile(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveMobileWidth(screenWidth, 24),
      responsiveMobileHeight(screenHeight, 24));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 24 / 24,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerMediumMobile(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveMobileWidth(screenWidth, 20),
      responsiveMobileHeight(screenHeight, 20));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 20 / 20,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerSmallMobile(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveMobileWidth(screenWidth, 16),
      responsiveMobileHeight(screenHeight, 16));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 16 / 16,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle bodyMobile(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveMobileWidth(screenWidth, 14),
      responsiveMobileHeight(screenHeight, 14));

  return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      height: 21.7 / 14,
      letterSpacing: 0.02 * fontSize,
      color: color);
}

TextStyle bodySmallMobile(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveMobileWidth(screenWidth, 12),
      responsiveMobileHeight(screenHeight, 12));

  return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      height: 18 / 12,
      letterSpacing: 0.02 * fontSize,
      color: color);
}