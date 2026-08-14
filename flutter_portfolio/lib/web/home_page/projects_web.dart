import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/detail_page.dart';
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
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveWebWidth(widget.screenWidth, 100),
              vertical: responsiveWebHeight(widget.screenHeight, 100)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                AppStrings.projects,
                key: widget.projectsKey,
                style: headerBigWeb(AppColors.lightTan, context),
              ),
            ]),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 79)),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: responsiveWebWidth(widget.screenWidth, 40),
              runSpacing: responsiveWebHeight(widget.screenHeight, 40),
              children: [
                Column(
                  children: [
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
                    SizedBox(
                      height: responsiveWebHeight(widget.screenHeight, 40),
                    ),
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
                  ],
                ),
                Column(
                  children: [
                    singleProject(
                        AppStrings.project3Title,
                        AppStrings.project3Description,
                        AppStrings.project3Tech1,
                        AppStrings.project3Tech2,
                        AppStrings.project3Tech3,
                        2,
                        AppStrings.projectOpen,
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.darkTan,
                        AppColors.lightBrown,
                        AppColors.darkestBrown,
                        AppAssets.neuroFlowLogo),
                    SizedBox(
                      height: responsiveWebHeight(widget.screenHeight, 40),
                    ),
                    singleProject(
                        AppStrings.project4Title,
                        AppStrings.project4Description,
                        AppStrings.project4Tech1,
                        AppStrings.project4Tech2,
                        AppStrings.project4Tech3,
                        3,
                        AppStrings.projectOpen,
                        AppColors.lightBrown,
                        AppColors.mediumBrown,
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.lightTan,
                        null),
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
      int detailIndex,
      String buttonText,
      Color backgroundColor,
      Color backgroundShadowColor,
      Color boxColor,
      Color boxShadowColor,
      Color buttonTextColor,
      String? logoAsset) {
    return CustomContainer(
      width: responsiveWebWidth(widget.screenWidth, 600),
      boxColor: backgroundColor,
      boxShadowColor: backgroundShadowColor,
      borderRadius: 25,
      offset: min(responsiveWebHeight(widget.screenHeight, 10),
          responsiveWebWidth(widget.screenWidth, 10)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWebWidth(widget.screenWidth, 50),
          vertical: responsiveWebHeight(widget.screenHeight, 35),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: headerMediumWeb(AppColors.lightTan, context)),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 30)),
            SizedBox(
              width: double.infinity,
              child: Text(
                description,
                style: bodyMediumWeb(AppColors.lightTan, context),
              ),
            ),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 20)),
            techGroup(
                tech1, tech2, tech3, boxColor, boxShadowColor, buttonTextColor),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 30)),
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
            offset: min(responsiveWebHeight(widget.screenHeight, 5),
                responsiveWebWidth(widget.screenWidth, 5)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                responsiveWebWidth(widget.screenWidth, 18),
                responsiveWebHeight(widget.screenHeight, 11),
                responsiveWebWidth(widget.screenWidth, 19),
                responsiveWebHeight(widget.screenHeight, 11),
              ),
              child: Text(
                buttonText,
                style: headerSmallWeb(buttonTextColor, context),
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
      spacing: responsiveWebWidth(widget.screenWidth, 24),
      runSpacing: 20,
      children: [
        action,
        _logoPanel(logoAsset, backgroundShadowColor),
      ],
    );
  }

  Widget _logoPanel(String logoAsset, Color shadowColor) => CustomContainer(
        height: max(90, responsiveWebHeight(widget.screenHeight, 120)),
        width: max(160, responsiveWebWidth(widget.screenWidth, 220)),
        boxColor: AppColors.lightTan,
        boxShadowColor: shadowColor,
        offset: min(responsiveWebHeight(widget.screenHeight, 5),
            responsiveWebWidth(widget.screenWidth, 5)),
        borderRadius: 16,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(logoAsset, fit: BoxFit.contain),
        ),
      );

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
        Wrap(
          spacing: responsiveWebWidth(widget.screenWidth, 12),
          runSpacing: responsiveWebHeight(widget.screenHeight, 12),
          children: [
            tech(tech1, boxColor, boxShadowColor, buttonTextColor),
            tech(tech2, boxColor, boxShadowColor, buttonTextColor),
          ],
        ),
        SizedBox(height: responsiveWebHeight(widget.screenHeight, 25)),
        tech(tech3, boxColor, boxShadowColor, buttonTextColor),
      ],
    );
  }
}
