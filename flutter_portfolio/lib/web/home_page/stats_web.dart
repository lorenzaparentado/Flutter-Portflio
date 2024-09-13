import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
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
      color: AppColors.darkestBrown,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveWebWidth(widget.screenWidth, 100),
            vertical: responsiveWebHeight(widget.screenHeight, 100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.lightGreen,
                AppColors.mediumGreen),
            SizedBox(
              width: responsiveWebWidth(widget.screenWidth, 46),
            ),
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.darkTan,
                AppColors.lightBrown),
            SizedBox(
              width: responsiveWebWidth(widget.screenWidth, 46),
            ),
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.lightGreen,
                AppColors.mediumGreen),
            SizedBox(
              width: responsiveWebWidth(widget.screenWidth, 46),
            ),
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.darkTan,
                AppColors.lightBrown),
          ],
        ),
      ),
    );
  }

  Widget statBoxes(
      String num, String description, Color boxColor, Color shadowColor) {
    return CustomContainer(
      height: responsiveWebHeight(widget.screenHeight, 150),
      width: responsiveWebWidth(widget.screenWidth, 275),
      boxColor: boxColor,
      boxShadowColor: shadowColor,
      offset: min(responsiveWebHeight(widget.screenHeight, 10),
                      responsiveWebWidth(widget.screenWidth, 10)),
      borderRadius: 10,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            responsiveWebWidth(widget.screenWidth, 37),
            responsiveWebHeight(widget.screenHeight, 20),
            responsiveWebWidth(widget.screenWidth, 37),
            responsiveWebHeight(widget.screenHeight, 10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(num, style: headerBigWeb(AppColors.darkestBrown, context)),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 3)),
            Text(description,
                style: bodyMediumWeb(AppColors.darkestBrown, context), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
