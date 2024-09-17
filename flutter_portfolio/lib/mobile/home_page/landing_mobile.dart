import 'dart:math';

import 'package:flutter/material.dart';
import '../../tools.dart';

class LandingMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  LandingMobile({required this.screenWidth, required this.screenHeight});

  @override
  _LandingMobile createState() => _LandingMobile();
}

class _LandingMobile extends State<LandingMobile> {
  @override
  Widget build(BuildContext context) {
    double imageWidth =
        widget.screenWidth * 197 / 320;
    double imageHeight = min((257 * (imageWidth / 196)), 257);
    return Container(
      height: (widget.screenWidth >= 700) ? imageHeight * 2 : imageHeight * 1.6 ,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: responsiveWebWidth(widget.screenWidth, 61),
            right: responsiveWebWidth(widget.screenWidth, 61),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/lorenz.png',
                  height: imageHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
