import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class StatsMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  StatsMobile({required this.screenWidth, required this.screenHeight});

  @override
  _StatsMobile createState() => _StatsMobile();
}

class _StatsMobile extends State<StatsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkestBrown,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveMobileWidth(widget.screenWidth, 20),
            vertical: responsiveMobileHeight(widget.screenHeight, 20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                statBoxes(AppStrings.stat1Num, AppStrings.stat1Text,
                    AppColors.lightGreen, AppColors.mediumGreen),
                SizedBox(
                  height: responsiveMobileHeight(widget.screenHeight, 24),
                ),
                statBoxes(AppStrings.stat2Num, AppStrings.stat2Text, AppColors.darkTan,
                    AppColors.lightBrown),
              ],
            ),
            SizedBox(
              width: responsiveMobileWidth(widget.screenWidth, 20),
            ),
            Column(
              children: [
                statBoxes(AppStrings.stat3Num, AppStrings.stat3Text, AppColors.darkTan,
                    AppColors.lightBrown),
                SizedBox(
                  height: responsiveMobileHeight(widget.screenHeight, 24),
                ),
                statBoxes(AppStrings.stat4Num, AppStrings.stat4Text,
                    AppColors.lightGreen, AppColors.mediumGreen),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget statBoxes(
      String num, String description, Color boxColor, Color shadowColor) {
    return CustomContainer(
      height: responsiveMobileHeight(widget.screenHeight, 100),
      width: responsiveMobileWidth(widget.screenWidth, 130),
      boxColor: boxColor,
      boxShadowColor: shadowColor,
      offset: min(responsiveMobileHeight(widget.screenHeight, 5),
          responsiveMobileWidth(widget.screenWidth, 5)),
      borderRadius: 11.73,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            responsiveMobileWidth(widget.screenWidth, 14),
            responsiveMobileHeight(widget.screenHeight, 26),
            responsiveMobileWidth(widget.screenWidth, 14),
            responsiveMobileHeight(widget.screenHeight, 6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(num, style: headerBigMobile(AppColors.darkestBrown, context)),
            Text(
              description,
              style: bodyMobile(AppColors.darkestBrown, context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
