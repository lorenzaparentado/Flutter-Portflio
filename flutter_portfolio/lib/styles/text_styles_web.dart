import 'package:flutter/material.dart';
import '../tools.dart';
import 'dart:math';

TextStyle headerBiggestWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 56),
      responsiveWebHeight(screenHeight, 56));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 58.8 / 56,
      letterSpacing: 0.02 * fontSize,
      color: color);
}

class Math {}

TextStyle headerBigWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 48),
      responsiveWebHeight(screenHeight, 48));

  return TextStyle(
      fontFamily: 'Urbanist',
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      height: 50.4 / 48,
      letterSpacing: 0.02 * fontSize);
}

TextStyle headerMediumWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 40),
      responsiveWebHeight(screenHeight, 40));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 42 / 40,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerSmallWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 32),
      responsiveWebHeight(screenHeight, 32));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 33.6 / 32,
      letterSpacing: 0.015 * fontSize,
      color: color);
}

TextStyle headerSmallestWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 24),
      responsiveWebHeight(screenHeight, 24));

  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      height: 24 / 24,
      letterSpacing: 0.01 * fontSize,
      color: color);
}

TextStyle bodyBigWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 24),
      responsiveWebHeight(screenHeight, 24));

  return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      height: 37.2 / 24,
      letterSpacing: 0.02 * fontSize,
      color: color);
}

TextStyle bodyMediumWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 20),
      responsiveWebHeight(screenHeight, 20));

  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      height: 31 / 20,
      letterSpacing: 0.02 * fontSize);
}

TextStyle bodySmallWeb(Color color, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double fontSize = min(responsiveWebWidth(screenWidth, 16),
      responsiveWebHeight(screenHeight, 16));

  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      height: 24.8 / 16,
      letterSpacing: 0.02 * fontSize);
}


