import 'package:flutter/material.dart';

TextStyle headerBiggest(Color color) {
  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: 56,
      fontWeight: FontWeight.w600,
      height: 58.8 / 56,
      letterSpacing: 0.02 * 56,
      color: color);
}

TextStyle headerBig(Color color) {
  return TextStyle(
      fontFamily: 'Urbanist',
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 48,
      height: 50.4 / 48,
      letterSpacing: 0.02 / 48);
}

TextStyle headerMedium(Color color) {
  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: 40,
      fontWeight: FontWeight.w600,
      height: 42 / 40,
      letterSpacing: 0.015 * 40,
      color: color);
}

TextStyle headerSmall(Color color) {
  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 33.6 / 32,
      letterSpacing: 0.015 * 32,
      color: color);
}

TextStyle headerSmallest(Color color) {
  return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 24 / 24,
      letterSpacing: 0.01 * 24,
      color: color);
}

TextStyle bodyBig(Color color) {
  return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 24,
      fontWeight: FontWeight.w400,
      height: 37.2 / 24,
      letterSpacing: 0.02 * 24,
      color: color);
}

TextStyle bodyMedium(Color color) {
  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      height: 31 / 20,
      letterSpacing: 0.02 / 20);
}

TextStyle bodySmall(Color color) {
  return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 24.8 / 16,
      letterSpacing: 0.02 / 16);
}
