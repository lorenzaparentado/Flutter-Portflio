import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/web/home_page/common_widgets_web.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
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
            horizontal: responsiveWidth(widget.screenWidth, 100),
            vertical: responsiveHeight(widget.screenHeight, 100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.lightGreen,
                AppColors.mediumGreen),
            SizedBox(
              width: responsiveWidth(widget.screenWidth, 46),
            ),
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.darkTan,
                AppColors.lightBrown),
            SizedBox(
              width: responsiveWidth(widget.screenWidth, 46),
            ),
            statBoxes("XX", "Lorem ipsum dolor sit amet", AppColors.lightGreen,
                AppColors.mediumGreen),
            SizedBox(
              width: responsiveWidth(widget.screenWidth, 46),
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
      height: responsiveHeight(widget.screenHeight, 150),
      width: responsiveWidth(widget.screenWidth, 275),
      boxColor: boxColor,
      boxShadowColor: shadowColor,
      offset: min(responsiveHeight(widget.screenHeight, 10),
                      responsiveWidth(widget.screenWidth, 10)),
      borderRadius: 10,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            responsiveWidth(widget.screenWidth, 37),
            responsiveHeight(widget.screenHeight, 20),
            responsiveWidth(widget.screenWidth, 37),
            responsiveHeight(widget.screenHeight, 10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(num, style: headerBig(AppColors.darkestBrown, context)),
            SizedBox(height: responsiveHeight(widget.screenHeight, 3)),
            Text(description,
                style: bodyMedium(AppColors.darkestBrown, context), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
