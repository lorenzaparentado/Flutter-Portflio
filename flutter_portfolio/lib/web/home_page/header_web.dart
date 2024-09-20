import 'package:flutter/material.dart';
import 'package:flutter_portfolio/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
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
          height: responsiveWebHeight(widget.screenHeight, 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWebWidth(widget.screenWidth, 75)),
              child: InkWell(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    AppStrings.aboutMe,
                    style: headerSmallestWeb(AppColors.darkestBrown, context),
                  ),
                ),
                onTap: () => widget.scrollToSection(widget.aboutMeKey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWebWidth(widget.screenWidth, 75)),
              child: InkWell(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    AppStrings.work,
                    style: headerSmallestWeb(AppColors.darkestBrown, context),
                  ),
                ),
                onTap: () => widget.scrollToSection(widget.workKey),
              ),
            ),
            InkWell(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  AppStrings.headerName,
                  style: headerMediumWeb(AppColors.darkestBrown, context),
                ),
              ),
              onTap: () => widget.scrollToSection(widget.landingKey),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWebWidth(widget.screenWidth, 75)),
              child: InkWell(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    AppStrings.projects,
                    style: headerSmallestWeb(AppColors.darkestBrown, context),
                  ),
                ),
                onTap: () => widget.scrollToSection(widget.projectsKey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWebWidth(widget.screenWidth, 75)),
              child: InkWell(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    AppStrings.contactMe,
                    style: headerSmallestWeb(AppColors.darkestBrown, context),
                  ),
                ),
                onTap: () => widget.scrollToSection(widget.contactKey, ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: responsiveWebHeight(widget.screenHeight, 25),
        )
      ]),
    );
  }
}
