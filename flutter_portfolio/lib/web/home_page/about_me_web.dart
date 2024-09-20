import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';

class AboutMeWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey aboutKey;

  AboutMeWeb(
      {required this.aboutKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _AboutMeWeb createState() => _AboutMeWeb();
}

class _AboutMeWeb extends State<AboutMeWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightTan,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveWebWidth(widget.screenWidth, 100),
            vertical: responsiveWebHeight(widget.screenHeight, 100)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.aboutMe,
                  key: widget.aboutKey,
                  style: headerBigWeb(AppColors.darkestBrown, context),
                )
              ],
            ),
            SizedBox(
              height: responsiveWebHeight(widget.screenHeight, 79),
            ),
            Row(
              children: [
                CustomContainer(
                  height: responsiveWebHeight(widget.screenHeight, 500),
                  width: responsiveWebWidth(widget.screenWidth, 400),
                  child: Center(child: Text('Image')),
                  boxColor: AppColors.mediumGreen,
                  boxShadowColor: AppColors.shadowGreen,
                  offset: min(responsiveWebHeight(widget.screenHeight, 10),
                      responsiveWebWidth(widget.screenWidth, 10)),
                  borderRadius: 25,
                ),
                SizedBox(
                  width: responsiveWebWidth(widget.screenWidth, 40),
                ),
                Expanded(
                  child: Text(
                      style: bodyMediumWeb(AppColors.darkestBrown, context),
                      AppStrings.aboutMeText),
                )
              ],
            ),
            SizedBox(height: responsiveWebHeight(widget.screenHeight, 40)),
            InkWell(
              onTap: () {_openResume();},
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: CustomContainer(
                    height: responsiveWebHeight(widget.screenHeight, 56),
                    width: responsiveWebWidth(widget.screenWidth, 400),
                    child: Center(
                      child: Text(
                    AppStrings.aboutMeResumeButton,
                    style: headerSmallWeb(AppColors.lightTan, context),
                  ),),
                    boxColor: AppColors.mediumGreen,
                    boxShadowColor: AppColors.shadowGreen,
                    offset: min(responsiveWebHeight(widget.screenHeight, 10),
                        responsiveWebWidth(widget.screenWidth, 10)),
                    borderRadius: 15,
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: responsiveWebHeight(widget.screenHeight, 13)),
              child: Text(
                AppStrings.aboutMeUpdated,
                style: bodyMediumWeb(AppColors.darkestBrown, context),
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
