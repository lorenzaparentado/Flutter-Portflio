import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/detail_page.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class ProjectsMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey projectsKey;

  ProjectsMobile(
      {required this.projectsKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _ProjectsMobile createState() => _ProjectsMobile();
}

class _ProjectsMobile extends State<ProjectsMobile> {
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  AppStrings.projects,
                  key: widget.projectsKey,
                  style: headerBigMobile(AppColors.lightTan, context),
                ),
              ]),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project1Title,
                  AppStrings.project1Description,
                  AppStrings.project1Tech1,
                  AppStrings.project1Tech2,
                  AppStrings.project1Tech3,
                  0,
                  AppStrings.projectOpen,
                  AppColors.lightBrown,
                  AppColors.mediumBrown,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.lightTan,
                  AppAssets.sigLogo),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project2Title,
                  AppStrings.project2Description,
                  AppStrings.project2Tech1,
                  AppStrings.project2Tech2,
                  AppStrings.project2Tech3,
                  1,
                  AppStrings.projectOpen,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.darkTan,
                  AppColors.lightBrown,
                  AppColors.darkestBrown,
                  AppAssets.comcastLogo),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project3Title,
                  AppStrings.project3Description,
                  AppStrings.project3Tech1,
                  AppStrings.project3Tech2,
                  AppStrings.project3Tech3,
                  2,
                  AppStrings.projectOpen,
                  AppColors.lightBrown,
                  AppColors.mediumBrown,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.lightTan,
                  AppAssets.neuroFlowLogo),
              SizedBox(height: responsiveMobileHeight(widget.screenHeight, 10)),
              singleProject(
                  AppStrings.project4Title,
                  AppStrings.project4Description,
                  AppStrings.project4Tech1,
                  AppStrings.project4Tech2,
                  AppStrings.project4Tech3,
                  3,
                  AppStrings.projectOpen,
                  AppColors.mediumGreen,
                  AppColors.darkestGreen,
                  AppColors.darkTan,
                  AppColors.lightBrown,
                  AppColors.darkestBrown,
                  null),
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
      int detailIndex,
      String buttonText,
      Color backgroundColor,
      Color backgroundShadowColor,
      Color boxColor,
      Color boxShadowColor,
      Color buttonTextColor,
      String? logoAsset) {
    return CustomContainer(
      width: responsiveMobileWidth(widget.screenWidth, 280),
      boxColor: backgroundColor,
      boxShadowColor: backgroundShadowColor,
      borderRadius: 10,
      offset: min(responsiveMobileHeight(widget.screenHeight, 2),
          responsiveMobileWidth(widget.screenWidth, 2)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveMobileWidth(widget.screenWidth, 16),
          vertical: responsiveMobileHeight(widget.screenHeight, 15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: headerMediumMobile(AppColors.lightTan, context),
            ),
            SizedBox(height: responsiveMobileHeight(widget.screenHeight, 15)),
            Text(
              description,
              style: bodyMobile(AppColors.lightTan, context),
            ),
            SizedBox(height: responsiveMobileHeight(widget.screenHeight, 13)),
            techGroup(
                tech1, tech2, tech3, boxColor, boxShadowColor, buttonTextColor),
            SizedBox(height: responsiveMobileHeight(widget.screenHeight, 20)),
            _cardFooter(
              _detailsButton(detailIndex, buttonText, boxColor, boxShadowColor,
                  buttonTextColor),
              logoAsset,
              backgroundShadowColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailsButton(int detailIndex, String buttonText, Color boxColor,
          Color boxShadowColor, Color buttonTextColor) =>
      InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                DetailPage(detail: AppStrings.experienceDetails[detailIndex]),
          ),
        ),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomContainer(
            boxColor: boxColor,
            boxShadowColor: boxShadowColor,
            borderRadius: 10,
            offset: min(responsiveMobileHeight(widget.screenHeight, 2),
                responsiveMobileWidth(widget.screenWidth, 2)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                responsiveMobileWidth(widget.screenWidth, 10),
                responsiveMobileHeight(widget.screenHeight, 5),
                responsiveMobileWidth(widget.screenWidth, 10),
                responsiveMobileHeight(widget.screenHeight, 5),
              ),
              child: Text(
                buttonText,
                style: headerSmallMobile(buttonTextColor, context),
              ),
            ),
          ),
        ),
      );

  Widget _cardFooter(
      Widget action, String? logoAsset, Color backgroundShadowColor) {
    if (logoAsset == null) return action;

    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.end,
      runSpacing: responsiveMobileHeight(widget.screenHeight, 16),
      children: [
        action,
        _logoPanel(logoAsset, backgroundShadowColor),
      ],
    );
  }

  Widget _logoPanel(String logoAsset, Color shadowColor) => CustomContainer(
        height: max(58, responsiveMobileHeight(widget.screenHeight, 62)),
        width: max(82, responsiveMobileWidth(widget.screenWidth, 84)),
        boxColor: AppColors.lightTan,
        boxShadowColor: shadowColor,
        offset: min(responsiveMobileHeight(widget.screenHeight, 2),
            responsiveMobileWidth(widget.screenWidth, 2)),
        borderRadius: 8,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(logoAsset, fit: BoxFit.contain),
        ),
      );

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
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              tech(tech1, boxColor, boxShadowColor, buttonTextColor),
              SizedBox(
                width: responsiveMobileWidth(widget.screenWidth, 10),
              ),
              tech(tech2, boxColor, boxShadowColor, buttonTextColor),
            ],
          ),
        ),
        SizedBox(height: responsiveMobileHeight(widget.screenHeight, 9.9)),
        tech(tech3, boxColor, boxShadowColor, buttonTextColor),
      ],
    );
  }
}
