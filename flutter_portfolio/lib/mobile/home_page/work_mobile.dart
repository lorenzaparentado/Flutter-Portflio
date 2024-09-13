import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
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
                  "About Me",
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
                "I am currently a Flutter Mobile Associate in the final month of my six-month co-op at Neuroflow. I connected with the company because of its mission to “create a happier and healthier world,” which resonated with my desire to make a positive impact through my work.\n\nIn my first three months, I focused solely on mobile development. During this time, I learned Flutter, Swift for iOS development, and Kotlin for Android development. I also familiarized myself with industry standards for mobile apps, ensuring my code was clean, up-to-date, and well-tested. I worked on multiple projects, including a PDF viewer for users’ homework, the settings and notifications page, and the onboarding flow."),
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
                style: bodyMobile(AppColors.lightTan, context),
                "For the past three months, I have been working on the backend. I learned Flask for our web app and SQL for our database. My tasks have included optimizing API calls to improve app performance, fixing bugs across the full stack to ensure a good user experience, and creating AWS Lambdas. As I continue to learn more about our codebase, I plan to delve into our frontend development as well.\n\nBeyond technical skills, I have gained many other valuable skills. I have learned how to collaborate effectively with other engineers and maintain a high-quality product together. Working in a multi-faceted team that includes Design, QA, Product, and all engineers has taught me about the various roles involved in developing a software product. Additionally, I have learned Agile methodology and Scrum, which have improved my ability to work with and interact with others."),
            SizedBox(
              height: responsiveMobileHeight(widget.screenHeight, 10),
            ),
          ],
        ),
      ),
    );
  }
}
