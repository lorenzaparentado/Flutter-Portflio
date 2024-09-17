import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';

class ProjectsWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey projectsKey;

  ProjectsWeb(
      {required this.projectsKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _ProjectsWeb createState() => _ProjectsWeb();
}

class _ProjectsWeb extends State<ProjectsWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.lightTan,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveWebWidth(widget.screenWidth, 100),
              vertical: responsiveWebHeight(widget.screenHeight, 100)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                AppStrings.projects,
                key: widget.projectsKey,
                style: headerBigWeb(AppColors.darkestBrown, context),
              ),
            ]),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 79)),
            Row(
              children: [
                Column(
                  children: [
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
                    SizedBox(
                      height: responsiveWebHeight(widget.screenHeight, 40),
                    ),
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
                  ],
                ),
                SizedBox(
                  width: responsiveWebWidth(widget.screenWidth, 40),
                ),
                Column(
                  children: [
                    singleProject(
                        AppStrings.project3Title,
                        AppStrings.project3Description,
                        AppStrings.project3Tech1,
                        AppStrings.project3Tech2,
                        AppStrings.project3Tech3,
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.darkTan,
                        AppColors.lightBrown,
                        AppColors.darkestBrown,
                        AppColors.darkestBrown),
                    SizedBox(
                      height: responsiveWebHeight(widget.screenHeight, 40),
                    ),
                    singleProject(
                        AppStrings.project4Title,
                        AppStrings.project4Description,
                        AppStrings.project4Tech1,
                        AppStrings.project4Tech2,
                        AppStrings.project4Tech3,
                        AppColors.lightBrown,
                        AppColors.mediumBrown,
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.lightTan,
                        AppColors.darkestGreen),
                  ],
                ),
              ],
            )
          ]),
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
      height: responsiveWebHeight(widget.screenHeight, 500),
      width: responsiveWebWidth(widget.screenWidth, 600),
      boxColor: backgroundColor,
      boxShadowColor: backgroundShadowColor,
      borderRadius: 25,
      offset: min(responsiveWebHeight(widget.screenHeight, 10),
          responsiveWebWidth(widget.screenWidth, 10)),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveWebWidth(widget.screenWidth, 50),
              responsiveWebHeight(widget.screenHeight, 50),
              0,
              0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: headerMediumWeb(AppColors.lightTan, context),
                ),
                SizedBox(height: responsiveWebHeight(widget.screenHeight, 50)),
                Text(
                  description,
                  style: bodyMediumWeb(AppColors.lightTan, context),
                ),
                SizedBox(height: responsiveWebHeight(widget.screenHeight, 27)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: techGroup(tech1, tech2, tech3, boxColor,
                          boxShadowColor, buttonTextColor),
                    ),
                    SizedBox(
                      height: responsiveWebHeight(widget.screenHeight, 99),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CustomContainer(
                        boxColor: boxColor,
                        boxShadowColor: boxShadowColor,
                        borderRadius: 10,
                        offset: min(responsiveWebHeight(widget.screenHeight, 5),
                            responsiveWebWidth(widget.screenWidth, 5)),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                responsiveWebWidth(widget.screenWidth, 18),
                                responsiveWebHeight(widget.screenHeight, 11),
                                responsiveWebWidth(widget.screenWidth, 19),
                                responsiveWebHeight(widget.screenHeight, 11)),
                            child: Text(
                              AppStrings.projectOpen,
                              style: headerSmallWeb(buttonTextColor, context),
                            )),
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
              height: responsiveWebHeight(widget.screenHeight, 300),
              width: responsiveWebWidth(widget.screenWidth, 300),
              decoration: BoxDecoration(
                color: imageColor,
                borderRadius: BorderRadius.circular(25),
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
      offset: min(responsiveWebHeight(widget.screenHeight, 5),
          responsiveWebWidth(widget.screenWidth, 5)),
      borderRadius: 10,
      child: Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveWebWidth(widget.screenWidth, 10),
              responsiveWebHeight(widget.screenHeight, 2),
              responsiveWebWidth(widget.screenWidth, 10),
              responsiveWebHeight(widget.screenHeight, 2)),
          child: Text(
            techName,
            style: bodyMediumWeb(buttonTextColor, context),
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
              width: responsiveWebWidth(widget.screenWidth, 25),
            ),
            tech(tech2, boxColor, boxShadowColor, buttonTextColor),
          ],
        ),
        SizedBox(height: responsiveWebHeight(widget.screenHeight, 25)),
        tech(tech3, boxColor, boxShadowColor, buttonTextColor),
      ],
    );
  }
}
