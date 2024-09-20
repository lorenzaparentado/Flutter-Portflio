import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class ProjectsMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  ProjectsMobile({required this.screenWidth, required this.screenHeight});

  @override
  _ProjectsMobile createState() => _ProjectsMobile();
}

class _ProjectsMobile extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.lightTan,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveMobileWidth(widget.screenWidth, 20),
              vertical: responsiveMobileHeight(widget.screenHeight, 20)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  AppStrings.projects,
                  style: headerBigMobile(AppColors.darkestBrown, context),
                ),
              ]),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project1Title,
                  AppStrings.project1Description,
                  AppStrings.project1Tech1,
                  AppStrings.project1Tech2,
                  AppStrings.project1Tech3,
                  AppColors.lightBrown,
                  AppColors.mediumBrown,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.lightTan,
                  AppColors.darkestGreen),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project2Title,
                  AppStrings.project2Description,
                  AppStrings.project2Tech1,
                  AppStrings.project2Tech2,
                  AppStrings.project2Tech3,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.darkTan,
                  AppColors.lightBrown,
                  AppColors.darkestBrown,
                  AppColors.darkestBrown),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project3Title,
                  AppStrings.project3Description,
                  AppStrings.project3Tech1,
                  AppStrings.project3Tech2,
                  AppStrings.project3Tech3,
                  AppColors.lightBrown,
                  AppColors.mediumBrown,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.lightTan,
                  AppColors.darkestGreen),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project4Title,
                  AppStrings.project4Description,
                  AppStrings.project4Tech1,
                  AppStrings.project4Tech2,
                  AppStrings.project4Tech3,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.darkTan,
                  AppColors.lightBrown,
                  AppColors.darkestBrown,
                  AppColors.darkestBrown),
            ],
          ),
        ));
  }

  Widget singleProject(
      String title,
      String description,
      String tech1,
      String tech2,
      String tech3,
      Color backgroundColor,
      Color backgroundShadowColor,
      Color boxColor,
      Color boxShadowColor,
      Color buttonTextColor,
      Color imageColor) {
    return CustomContainer(
      height: responsiveMobileHeight(widget.screenHeight, 233),
      width: responsiveMobileWidth(widget.screenWidth, 280),
      boxColor: backgroundColor,
      boxShadowColor: backgroundShadowColor,
      borderRadius: 10,
      offset: min(responsiveMobileHeight(widget.screenHeight, 2),
          responsiveMobileWidth(widget.screenWidth, 2)),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveMobileWidth(widget.screenWidth, 16),
              responsiveMobileHeight(widget.screenHeight, 15),
              0,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: headerMediumMobile(AppColors.lightTan, context),
                ),
                SizedBox(
                    height: responsiveMobileHeight(widget.screenHeight, 15)),
                Text(
                  description,
                  style: bodyMobile(AppColors.lightTan, context),
                ),
                SizedBox(
                    height: responsiveMobileHeight(widget.screenHeight, 13)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: techGroup(tech1, tech2, tech3, boxColor,
                          boxShadowColor, buttonTextColor),
                    ),
                    SizedBox(
                      height: responsiveMobileHeight(widget.screenHeight, 25),
                    ),
                    InkWell(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomContainer(
                          boxColor: boxColor,
                          boxShadowColor: boxShadowColor,
                          borderRadius: 10,
                          offset: min(
                              responsiveMobileHeight(widget.screenHeight, 2),
                              responsiveMobileWidth(widget.screenWidth, 2)),
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  responsiveMobileWidth(widget.screenWidth, 10),
                                  responsiveMobileHeight(widget.screenHeight, 5),
                                  responsiveMobileWidth(widget.screenWidth, 10),
                                  responsiveMobileHeight(widget.screenHeight, 5)),
                              child: Text(
                                AppStrings.projectOpen,
                                style:
                                    headerSmallMobile(buttonTextColor, context),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: responsiveMobileHeight(widget.screenHeight, 125),
              width: responsiveMobileWidth(widget.screenWidth, 125),
              decoration: BoxDecoration(
                color: imageColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ))
      ]),
    );
  }

  Widget tech(String techName, Color boxColor, Color boxShadowColor,
      Color buttonTextColor) {
    return CustomContainer(
      boxColor: boxColor,
      boxShadowColor: boxShadowColor,
      offset: min(responsiveMobileHeight(widget.screenHeight, 2),
          responsiveMobileWidth(widget.screenWidth, 2)),
      borderRadius: 5,
      child: Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveMobileWidth(widget.screenWidth, 4),
              responsiveMobileHeight(widget.screenHeight, 1),
              responsiveMobileWidth(widget.screenWidth, 4),
              responsiveMobileHeight(widget.screenHeight, 1)),
          child: Text(
            techName,
            style: bodyMobile(buttonTextColor, context),
          )),
    );
  }

  Widget techGroup(String tech1, String tech2, String tech3, Color boxColor,
      Color boxShadowColor, Color buttonTextColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            tech(tech1, boxColor, boxShadowColor, buttonTextColor),
            SizedBox(
              width: responsiveMobileWidth(widget.screenWidth, 10),
            ),
            tech(tech2, boxColor, boxShadowColor, buttonTextColor),
          ],
        ),
        SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
        tech(tech3, boxColor, boxShadowColor, buttonTextColor),
      ],
    );
  }
}
