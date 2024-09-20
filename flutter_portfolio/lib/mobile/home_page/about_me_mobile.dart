import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';
import '../../strings.dart';

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
                  AppStrings.aboutMe,
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
            Text(
                softWrap: true,
                style: bodyMobile(AppColors.darkestBrown, context),
                AppStrings.aboutMeText),
            SizedBox(
              height: responsiveMobileHeight(widget.screenWidth, 15),
            ),
            InkWell(
              onTap: () {
                _openResume();
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: CustomContainer(
                  height: responsiveMobileHeight(widget.screenHeight, 40),
                  width: responsiveMobileWidth(widget.screenWidth, 234),
                  child: Center(
                    child: Text(
                      AppStrings.aboutMeResumeButton,
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
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: responsiveMobileHeight(widget.screenHeight, 6)),
              child: Text(
                AppStrings.aboutMeUpdated,
                style: bodyMobile(AppColors.darkestBrown, context),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _openResume() async {
    const url =
        'https://drive.google.com/file/d/1gQWW-SPIzdRrfiK8DQmMy3cWoXPgAVbj/view?usp=sharing'; // Replace with your resume URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
