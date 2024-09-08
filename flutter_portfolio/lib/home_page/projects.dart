import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Projects extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Projects({required this.screenWidth, required this.screenHeight});

  @override
  _Projects createState() => _Projects();
}

class _Projects extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1369,
        color: AppColors.lightTan,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Projects",
                style: headerBig(AppColors.darkestBrown, context),
              ),
            ]),
          ),
          GridView.count(
            primary: false,
            childAspectRatio: (600 / 500),
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(100, 229, 100, 100),
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
            crossAxisCount: 2,
            children: <Widget>[
              singleProject(),
              singleProject(),
              singleProject(),
              singleProject(),
            ],
          ),
        ]));
  }

  Widget projectTech() {
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
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        child: Text("Tech1", style: bodyMedium(AppColors.lightTan, context)),
      ),
    );
  }

  Widget singleProject() {
    return Container(
        height: 500,
        width: 600,
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
        child: Stack(
          children: [
            Positioned(
                top: 50,
                left: 51,
                child: Text(
                  "Project Title",
                  style: headerMedium(AppColors.darkestBrown, context),
                )),
            Positioned(
                top: 142,
                left: 51,
                child: Text(
                  "Project description",
                  style: bodyMedium(AppColors.darkestBrown, context),
                )),
            Positioned(
                top: 200,
                left: 51,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        projectTech(),
                        SizedBox(width: 25),
                        projectTech(),
                      ],
                    ),
                    SizedBox(height: 27),
                    projectTech(),
                  ],
                )),
            Positioned(
              top: 394,
              left: 51,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.darkestGreen,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.shadowGreen,
                          offset: Offset(-10, 10),
                          blurRadius: 0,
                          blurStyle: BlurStyle.solid),
                    ],
                  ),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(18, 11, 18, 11),
                    child: Text(
                      'Open Project',
                      style: headerSmall(AppColors.lightTan, context),
                    ),
                  )),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.darkestGreen,
                    borderRadius: BorderRadius.circular(25),
                  ),
                )),
          ],
        ));
  }
}
