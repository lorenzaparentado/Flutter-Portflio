import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class WorkMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  WorkMobile({required this.screenWidth, required this.screenHeight});

  @override
  _WorkMobile createState() => _WorkMobile();
}

class _WorkMobile extends State<WorkMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkestBrown,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveMobileWidth(widget.screenWidth, 20),
            vertical: responsiveMobileHeight(widget.screenHeight, 20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.work,
                  style: headerBigMobile(AppColors.lightTan, context),
                )
              ],
            ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenHeight, 10),
            ),
            CustomContainer(
              height: responsiveMobileHeight(widget.screenHeight, 154),
              width: responsiveMobileWidth(widget.screenWidth, 200),
              child: Center(child: Text('Image')),
              boxColor: AppColors.lightGreen,
              boxShadowColor: AppColors.mediumGreen,
              offset: min(responsiveMobileHeight(widget.screenHeight, 5),
                  responsiveMobileWidth(widget.screenWidth, 5)),
              borderRadius: 10,
            ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenWidth, 15),
            ),
            Text(softWrap: true,
                style: bodyMobile(AppColors.lightTan, context),
                AppStrings.workText1
                ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenHeight, 10),
            ),
            CustomContainer(
              height: responsiveMobileHeight(widget.screenHeight, 115),
              width: responsiveMobileWidth(widget.screenWidth, 200),
              child: Center(child: Text('Image')),
              boxColor: AppColors.lightGreen,
              boxShadowColor: AppColors.mediumGreen,
              offset: min(responsiveMobileHeight(widget.screenHeight, 5),
                  responsiveMobileWidth(widget.screenWidth, 5)),
              borderRadius: 10,
            ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenWidth, 15),
            ),
            Text(softWrap: true,
                style: bodyMobile(AppColors.lightTan, context), AppStrings.workText2
                ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenHeight, 10),
            ),
          ],
        ),
      ),
    );
  }
}
