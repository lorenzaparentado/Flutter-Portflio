import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';

class WorkWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey workKey;

  WorkWeb({required this.workKey, required this.screenWidth, required this.screenHeight});

  @override
  _WorkWeb createState() => _WorkWeb();
}

class _WorkWeb extends State<WorkWeb> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveWebWidth(widget.screenWidth, 100),
              vertical: responsiveWebHeight(widget.screenHeight, 100)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                AppStrings.work,
                key: widget.workKey,
                style: headerBigWeb(AppColors.lightTan, context),
              ),
            ]),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 79)),
            Row(
              children: [
                Expanded(
                  child: Text(
                      style: bodyMediumWeb(AppColors.lightTan, context),
                      AppStrings.workText1),
                ),
                SizedBox(
                  width: responsiveWebWidth(widget.screenWidth, 40),
                ),
                CustomContainer(
                  height: responsiveWebHeight(widget.screenHeight, 230),
                  width: responsiveWebWidth(widget.screenWidth, 300),
                  boxColor: AppColors.lightGreen,
                  boxShadowColor: AppColors.mediumGreen,
                  offset: min(responsiveWebHeight(widget.screenHeight, 10),
                      responsiveWebWidth(widget.screenWidth, 10)),
                  borderRadius: 10,
                  child: Center(child: Text('Image')),
                ),
              ],
            ),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 50)),
            Row(
              children: [
                CustomContainer(
                  height: responsiveWebHeight(widget.screenHeight, 230),
                  width: responsiveWebWidth(widget.screenWidth, 400),
                  boxColor: AppColors.lightGreen,
                  boxShadowColor: AppColors.mediumGreen,
                  offset: min(responsiveWebHeight(widget.screenHeight, 10),
                      responsiveWebWidth(widget.screenWidth, 10)),
                  borderRadius: 10,
                  child: Center(child: Text('Image')),
                ),
                SizedBox(
                  width: responsiveWebWidth(widget.screenWidth, 40),
                ),
                Expanded(
                  child: Text(
                      style: bodyMediumWeb(AppColors.lightTan, context),
                      softWrap: true,
                      AppStrings.workText2),
                ),
              ],
            ),
          ]),
        ));
  }
}
