import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class StatsWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  StatsWeb({required this.screenWidth, required this.screenHeight});

  @override
  _StatsWeb createState() => _StatsWeb();
}

class _StatsWeb extends State<StatsWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(widget.screenHeight, 700),
      color: AppColors.darkestBrown,
    );
  }}