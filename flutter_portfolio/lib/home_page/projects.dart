import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Projects extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey projectsKey;

  Projects({required this.projectsKey, required this.screenWidth, required this.screenHeight});

  @override
  _Projects createState() => _Projects();
}

class _Projects extends State<Projects> {
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
                    singleProject(),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 40),
                    ),
                    singleProject(),
                  ],
                ),
                SizedBox(
                  width: responsiveWidth(widget.screenWidth, 40),
                ),
                Column(
                  children: [
                    singleProject(),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 40),
                    ),
                    singleProject(),
                  ],
                ),
              ],
            )
          ]),
        ));
  }

  Widget singleProject() {
    return Container(
      height: responsiveHeight(widget.screenHeight, 500),
      width: responsiveWidth(widget.screenWidth, 600),
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: AppColors.mediumGreen,
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
                  "Project Name",
                  style: headerMedium(AppColors.darkestBrown, context),
                ),
                SizedBox(height: responsiveHeight(widget.screenHeight, 50)),
                Text(
                  "This is the project description",
                  style: bodyMedium(AppColors.darkestBrown, context),
                ),
                SizedBox(height: responsiveHeight(widget.screenHeight, 27)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: techGroup(),
                    ),
                    SizedBox(
                      height: responsiveHeight(widget.screenHeight, 99),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.darkestGreen,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.shadowGreen,
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
                              style: headerSmall(AppColors.lightTan, context),
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
                color: AppColors.darkestGreen,
                borderRadius: BorderRadius.circular(25),
              ),
            ))
      ]),
    );
  }

  Widget tech() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkestGreen,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: AppColors.shadowGreen,
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
            "Tech1",
            style: bodyMedium(AppColors.lightTan, context),
          )),
    );
  }

  Widget techGroup() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            tech(),
            SizedBox(
              width: responsiveWidth(widget.screenWidth, 25),
            ),
            tech(),
          ],
        ),
        SizedBox(height: responsiveHeight(widget.screenHeight, 25)),
        tech(),
      ],
    );
  }
}
