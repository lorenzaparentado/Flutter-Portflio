import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Work extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Work({required this.screenWidth, required this.screenHeight});

  @override
  _Work createState() => _Work();
}

class _Work extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveWidth(widget.screenWidth, 100),
              vertical: responsiveHeight(widget.screenHeight, 100)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Work",
                style: headerBig(AppColors.lightTan, context),
              ),
            ]),
            SizedBox(height: responsiveHeight(widget.screenHeight, 79)),
            Row(
              children: [
                Expanded(
                  child: Text(
                      style: bodyMedium(AppColors.lightTan, context),
                      "I am currently a Flutter Mobile Associate in the final month of my six-month co-op at Neuroflow. I connected with the company because of its mission to “create a happier and healthier world,” which resonated with my desire to make a positive impact through my work.\n\nIn my first three months, I focused solely on mobile development. During this time, I learned Flutter, Swift for iOS development, and Kotlin for Android development. I also familiarized myself with industry standards for mobile apps, ensuring my code was clean, up-to-date, and well-tested. I worked on multiple projects, including a PDF viewer for users’ homework, the settings and notifications page, and the onboarding flow."),
                ),
                SizedBox(
                  width: responsiveWidth(widget.screenWidth, 40),
                ),
                Container(
                  height: responsiveHeight(widget.screenHeight, 230),
                  width: responsiveWidth(widget.screenWidth, 300),
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.mediumGreen,
                          offset: Offset(-10, 10),
                          blurRadius: 0,
                          blurStyle: BlurStyle.solid),
                    ],
                  ),
                  child: Center(child: Text('Image')),
                ),
              ],
            ),
            SizedBox(height: responsiveHeight(widget.screenHeight, 50)),
            Row(
              children: [
                Container(
                  height: responsiveHeight(widget.screenHeight, 230),
                  width: responsiveWidth(widget.screenWidth, 400),
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.mediumGreen,
                          offset: Offset(-10, 10),
                          blurRadius: 0,
                          blurStyle: BlurStyle.solid),
                    ],
                  ),
                  child: Center(child: Text('Image')),
                ),
                SizedBox(
                  width: responsiveWidth(widget.screenWidth, 40),
                ),
                Expanded(
                  child: Text(
                      style: bodyMedium(AppColors.lightTan, context),
                      softWrap: true,
                      "For the past three months, I have been working on the backend. I learned Flask for our web app and SQL for our database. My tasks have included optimizing API calls to improve app performance, fixing bugs across the full stack to ensure a good user experience, and creating AWS Lambdas. As I continue to learn more about our codebase, I plan to delve into our frontend development as well.\n\nBeyond technical skills, I have gained many other valuable skills. I have learned how to collaborate effectively with other engineers and maintain a high-quality product together. Working in a multi-faceted team that includes Design, QA, Product, and all engineers has taught me about the various roles involved in developing a software product. Additionally, I have learned Agile methodology and Scrum, which have improved my ability to work with and interact with others."),
                ),
              ],
            ),
          ]),
        ));
  }
}
