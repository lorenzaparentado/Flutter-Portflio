import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Stats extends StatefulWidget {
  final double screenWidth;

  Stats({required this.screenWidth});

  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: AppColors.darkestBrown,
    );
  }}