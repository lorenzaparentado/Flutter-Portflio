import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';
import '../../tools.dart';

class HeaderWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final Function(GlobalKey) scrollToSection;
  final GlobalKey landingKey;
  final GlobalKey aboutMeKey;
  final GlobalKey workKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  HeaderWeb({
    required this.landingKey,
    required this.screenWidth,
    required this.screenHeight,
    required this.scrollToSection,
    required this.aboutMeKey,
    required this.workKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  _HeaderWeb createState() => _HeaderWeb();
}

class _HeaderWeb extends State<HeaderWeb> {
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
      child: Column(children: [
        SizedBox(
          height: responsiveHeight(widget.screenHeight, 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "About Me",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () => widget.scrollToSection(widget.aboutMeKey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () => widget.scrollToSection(widget.workKey),
              ),
            ),
            TextButton(
              child: Text(
                "Lorenz",
                style: headerMedium(AppColors.darkestBrown, context),
              ),
              onPressed: () => widget.scrollToSection(widget.landingKey),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () => widget.scrollToSection(widget.projectsKey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () => widget.scrollToSection(widget.contactKey, ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: responsiveHeight(widget.screenHeight, 25),
        )
      ]),
    );
  }
}
