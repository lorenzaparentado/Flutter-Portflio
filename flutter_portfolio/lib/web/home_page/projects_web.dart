import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
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
              horizontal: responsiveWidth(widget.screenWidth, 100),
              vertical: responsiveHeight(widget.screenHeight, 100)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Projects",
                key: widget.projectsKey,
                style: headerBig(AppColors.darkestBrown, context),
              ),
            ]),
            SizedBox(height: responsiveHeight(widget.screenHeight, 79)),
            Row(
              children: [
                Column(
                  children: [
                    singleProject(
                        "title",
                        "description",
                        "tech1",
                        "tech2",
                        "tech3",
                        AppColors.lightBrown,
                        AppColors.mediumBrown,
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.lightTan,
                        AppColors.darkestGreen),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 40),
                    ),
                    singleProject(
                        "title",
                        "description",
                        "tech1",
                        "tech2",
                        "tech3",
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.darkTan,
                        AppColors.lightBrown,
                        AppColors.darkestBrown,
                        AppColors.darkestBrown),
                  ],
                ),
                SizedBox(
                  width: responsiveWidth(widget.screenWidth, 40),
                ),
                Column(
                  children: [
                    singleProject(
                        "title",
                        "description",
                        "tech1",
                        "tech2",
                        "tech3",
                        AppColors.mediumGreen,
                        AppColors.darkestGreen,
                        AppColors.darkTan,
                        AppColors.lightBrown,
                        AppColors.darkestBrown,
                        AppColors.darkestBrown),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 40),
                    ),
                    singleProject(
                        "title",
                        "description",
                        "tech1",
                        "tech2",
                        "tech3",
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
      Color buttonColor,
      Color buttonShadowColor,
      Color buttonTextColor,
      Color imageColor) {
    return Container(
      height: responsiveHeight(widget.screenHeight, 500),
      width: responsiveWidth(widget.screenWidth, 600),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: backgroundShadowColor,
              offset: Offset(-10, 10),
              blurRadius: 0,
              blurStyle: BlurStyle.solid),
        ],
      ),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(responsiveWidth(widget.screenWidth, 50),
              responsiveHeight(widget.screenHeight, 50), 0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: headerMedium(AppColors.lightTan, context),
                ),
                SizedBox(height: responsiveHeight(widget.screenHeight, 50)),
                Text(
                  description,
                  style: bodyMedium(AppColors.lightTan, context),
                ),
                SizedBox(height: responsiveHeight(widget.screenHeight, 27)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: techGroup(tech1, tech2, tech3, buttonColor,
                          buttonShadowColor, buttonTextColor),
                    ),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 99),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: buttonShadowColor,
                                offset: Offset(-5, 5),
                                blurRadius: 0,
                                blurStyle: BlurStyle.solid),
                          ],
                        ),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                responsiveWidth(widget.screenWidth, 18),
                                responsiveHeight(widget.screenHeight, 11),
                                responsiveWidth(widget.screenWidth, 19),
                                responsiveHeight(widget.screenHeight, 11)),
                            child: Text(
                              "Open Project",
                              style: headerSmall(buttonTextColor, context),
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
              height: responsiveHeight(widget.screenHeight, 300),
              width: responsiveWidth(widget.screenWidth, 300),
              decoration: BoxDecoration(
                color: imageColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ))
      ]),
    );
  }

  Widget tech(String techName, Color buttonColor, Color buttonShadowColor,
      Color buttonTextColor) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: buttonShadowColor,
              offset: Offset(-5, 5),
              blurRadius: 0,
              blurStyle: BlurStyle.solid),
        ],
      ),
      child: Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveWidth(widget.screenWidth, 10),
              responsiveHeight(widget.screenHeight, 2),
              responsiveWidth(widget.screenWidth, 10),
              responsiveHeight(widget.screenHeight, 2)),
          child: Text(
            techName,
            style: bodyMedium(buttonTextColor, context),
          )),
    );
  }

  Widget techGroup(String tech1, String tech2, String tech3, Color buttonColor,
      Color buttonShadowColor, Color buttonTextColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            tech(tech1, buttonColor, buttonShadowColor, buttonTextColor),
            SizedBox(
              width: responsiveWidth(widget.screenWidth, 25),
            ),
            tech(tech2, buttonColor, buttonShadowColor, buttonTextColor),
          ],
        ),
        SizedBox(height: responsiveHeight(widget.screenHeight, 25)),
        tech(tech3, buttonColor, buttonShadowColor, buttonTextColor),
      ],
    );
  }
}
