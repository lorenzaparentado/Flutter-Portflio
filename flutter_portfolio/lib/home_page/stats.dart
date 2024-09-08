import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Stats extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Stats({required this.screenWidth, required this.screenHeight});

  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(widget.screenHeight, 700),
      color: AppColors.darkestBrown,
    );
  }}