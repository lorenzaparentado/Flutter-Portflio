import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class AboutMeMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  AboutMeMobile({required this.screenWidth, required this.screenHeight});

  @override
  _AboutMeMobile createState() => _AboutMeMobile();
}

class _AboutMeMobile extends State<AboutMeMobile> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: headerBigMobile(AppColors.darkestBrown, context),
                )
              ],
            ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenHeight, 6),
            ),
            CustomContainer(
              height: responsiveMobileHeight(widget.screenHeight, 160),
              width: responsiveMobileWidth(widget.screenWidth, 200),
              child: Center(child: Text('Image')),
              boxColor: AppColors.mediumGreen,
              boxShadowColor: AppColors.shadowGreen,
              offset: min(responsiveMobileHeight(widget.screenHeight, 5),
                  responsiveMobileWidth(widget.screenWidth, 5)),
              borderRadius: 10,
            ),
            SizedBox(
              height: responsiveMobileHeight(widget.screenWidth, 15),
            ),
            Text(softWrap: true,
                style: bodyMobile(AppColors.darkestBrown, context),
                "Hey I’m Lorenz, a third-year Computer Science major at Drexel University, pursuing a minor in Data Science with concentrations in Software Engineering and Artificial Intelligence/Machine Learning. With four years of experience in computer science, which began in high school, I have maintained a high college GPA of 3.87 and great academic standards. I enjoy working on projects in my free time and have participated in three hackathons, winning one of them.\n\nCurrently, I am on a co-op at Neuroflow as a Flutter mobile engineer, working part-time as I start school. Initially, I focused on mobile development, creating new features and implementing existing ones onto Flutter. Now, I am working on backend development and plan to develop into a full-stack engineer.\n\nOutside of coding, I have a variety of interests. As a musician, I play around five instruments, including guitar, saxophone, ukulele, flute, and a bit of piano. As an athlete, I enjoy running almost every morning and working out every afternoon. I also embrace my nerdy side by playing video games, especially open-world RPGs like the Fallout series and Cyberpunk, and I enjoy watching movies and TV shows."),
            SizedBox(
              height: responsiveMobileHeight(widget.screenWidth, 15),
            ),
            GestureDetector(
              onTap: () {},
              child: CustomContainer(
                height: responsiveMobileHeight(widget.screenHeight, 40),
                width: responsiveMobileWidth(widget.screenWidth, 234),
                child: Center(
                  child: Text(
                    'Check out my resume!',
                    style: headerMediumMobile(AppColors.lightTan, context),
                  ),
                ),
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                    responsiveMobileWidth(widget.screenWidth, 4)),
                borderRadius: 10,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: responsiveMobileHeight(widget.screenHeight, 6)),
              child: Text(
                "Last Updated September, 2024",
                style: bodyMobile(AppColors.darkestBrown, context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
