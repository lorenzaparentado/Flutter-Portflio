import 'package:flutter/material.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class HeaderMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  // final Function(GlobalKey) scrollToSection;
  // final GlobalKey landingKey;
  // final GlobalKey aboutMeKey;
  // final GlobalKey workKey;
  // final GlobalKey projectsKey;
  // final GlobalKey contactKey;

  HeaderMobile({
    // required this.landingKey,
    required this.screenWidth,
    required this.screenHeight,
    // required this.scrollToSection,
    // required this.aboutMeKey,
    // required this.workKey,
    // required this.projectsKey,
    // required this.contactKey,
  });

  @override
  _HeaderMobile createState() => _HeaderMobile();
}

class _HeaderMobile extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.lightTan,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              responsiveMobileWidth(widget.screenWidth, 20),
              responsiveMobileHeight(widget.screenHeight, 25),
              responsiveMobileWidth(widget.screenWidth, 20),
              responsiveMobileHeight(widget.screenHeight, 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: responsiveMobileHeight(widget.screenHeight, 4)),
                child: Text(AppStrings.headerFullName,
                    style:
                        headerBigMobile(AppColors.darkestBrown, context)),
              ),
              Image.asset(
                "assets/images/hamburgerIcon.png",
                width: responsiveMobileWidth(widget.screenWidth, 70),
              ),
            ],
          ),
        ));
  }
}
