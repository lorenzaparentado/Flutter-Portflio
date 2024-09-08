import 'package:flutter/material.dart';
import '../tools.dart';
import 'dart:math';

TextStyle headerBiggest(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 56), responsiveHeight(screenHeight, 56));


  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 58.8 / 56,
      letterSpacing: 0.02 * fontSize,
      color: color);
}

class Math {
}

TextStyle headerBig(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 48), responsiveHeight(screenHeight, 48));


  return TextStyle(
      fontFamily: 'Urbanist',
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      height: 50.4 / 48,
      letterSpacing: 0.02 * fontSize);
}

TextStyle headerMedium(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 40), responsiveHeight(screenHeight, 40));


  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 42 / 40,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerSmall(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 32), responsiveHeight(screenHeight, 32));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 33.6 / 32,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerSmallest(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 24), responsiveHeight(screenHeight, 24));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 24 / 24,
      letterSpacing: 0.01 * fontSize,
      color: color);
}

TextStyle bodyBig(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 24), responsiveHeight(screenHeight, 24));

  return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      height: 37.2 / 24,
      letterSpacing: 0.02 * fontSize,
      color: color);
}

TextStyle bodyMedium(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 20), responsiveHeight(screenHeight, 20));

  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      height: 31 / 20,
      letterSpacing: 0.02 * fontSize);
}

TextStyle bodySmall(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWidth(screenWidth, 16), responsiveHeight(screenHeight, 16));

  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      height: 24.8 / 16,
      letterSpacing: 0.02 * fontSize);
}
