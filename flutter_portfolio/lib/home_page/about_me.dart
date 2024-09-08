import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class AboutMe extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  AboutMe({required this.screenWidth, required this.screenHeight});

  @override
  _AboutMe createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: responsiveHeight(widget.screenHeight, 1000),
      color: AppColors.lightTan,
      child: Stack(
        children: [
          Positioned(
            left: responsiveWidth(widget.screenWidth, 100),
            top: responsiveHeight(widget.screenHeight, 229),
            child: Container(
              height: responsiveHeight(widget.screenHeight, 500),
              width: responsiveWidth(widget.screenWidth, 400),
              decoration: BoxDecoration(
                color: AppColors.mediumGreen,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowGreen,
                      offset: Offset(-10, 10),
                      blurRadius: 0,
                      blurStyle: BlurStyle.solid),
                ],
              ),
              child: Center(child: Text('Image')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: responsiveHeight(widget.screenHeight, 100)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: headerBig(AppColors.darkestBrown, context),
                )
              ],
            ),
          ),
          Positioned(
              left: responsiveWidth(widget.screenWidth, 540),
              top: responsiveHeight(widget.screenHeight, 229),
              right: responsiveWidth(widget.screenWidth, 100),
              child: Text(
                  style: bodyMedium(AppColors.darkestBrown, context),
                  "Hey I’m Lorenz, a third-year Computer Science major at Drexel University, pursuing a minor in Data Science with concentrations in Software Engineering and Artificial Intelligence/Machine Learning. With four years of experience in computer science, which began in high school, I have maintained a high college GPA of 3.87 and great academic standards. I enjoy working on projects in my free time and have participated in three hackathons, winning one of them.\n\nCurrently, I am on a co-op at Neuroflow as a Flutter mobile engineer, working part-time as I start school. Initially, I focused on mobile development, creating new features and implementing existing ones onto Flutter. Now, I am working on backend development and plan to develop into a full-stack engineer.\n\nOutside of coding, I have a variety of interests. As a musician, I play around five instruments, including guitar, saxophone, ukulele, flute, and a bit of piano. As an athlete, I enjoy running almost every morning and working out every afternoon. I also embrace my nerdy side by playing video games, especially open-world RPGs like the Fallout series and Cyberpunk, and I enjoy watching movies and TV shows.")),
          Padding(
            padding: EdgeInsets.fromLTRB(0, responsiveHeight(widget.screenHeight, 870), 0 , responsiveHeight(widget.screenHeight, 100)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: responsiveHeight(widget.screenHeight, 56),
                      width: responsiveWidth(widget.screenWidth, 400),
                      decoration: BoxDecoration(
                        color: AppColors.mediumGreen,
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
                          child: Text(
                        'Check out my resume!',
                        style: headerSmall(AppColors.lightTan, context),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: responsiveHeight(widget.screenHeight, 13)),
                    child: Text(
                      "Last Updated Month, Year",
                      style: bodyMedium(AppColors.darkestBrown, context),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }}