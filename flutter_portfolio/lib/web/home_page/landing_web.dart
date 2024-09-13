import 'dart:math';

import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';

class LandingWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey landingKey;

  LandingWeb(
      {required this.landingKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _LandingWeb createState() => _LandingWeb();
}

class _LandingWeb extends State<LandingWeb> {
  @override
  Widget build(BuildContext context) {
    double imageWidth =
        widget.screenWidth >= 1440 ? 434 : min(434, widget.screenWidth * 0.3);
    double imageHeight = 567 * (imageWidth / 434);
    return Container(
      key: widget.landingKey,
      height:
          imageHeight * 1.5,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: responsiveWebWidth(widget.screenWidth, 100),
            right: responsiveWebWidth(widget.screenWidth, 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: imageHeight * .5),
                  child: Text(
                    "Lorenz\nAparentado",
                    style: headerBiggestWeb(AppColors.darkestBrown, context),
                  ),
                ),
                Image.asset(
                  'assets/images/lorenz.png',
                  height: imageHeight,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: imageHeight * .5),
                  child: Text(
                    "Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
                    style: bodyBigWeb(AppColors.darkestBrown, context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
