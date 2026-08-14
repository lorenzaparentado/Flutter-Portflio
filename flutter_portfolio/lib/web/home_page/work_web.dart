import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';

class WorkWeb extends StatelessWidget {
  const WorkWeb({
    super.key,
    required this.workKey,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;
  final GlobalKey workKey;

  @override
  Widget build(BuildContext context) {
    final horizontal = responsiveWebWidth(screenWidth, 100);
    final vertical = responsiveWebHeight(screenHeight, 90);
    return Container(
      color: AppColors.darkestBrown,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppStrings.work,
              key: workKey,
              textAlign: TextAlign.center,
              style: headerBigWeb(AppColors.lightTan, context),
            ),
            SizedBox(height: responsiveWebHeight(screenHeight, 56)),
            _intro(context),
            SizedBox(height: responsiveWebHeight(screenHeight, 42)),
            _coursework(context),
            SizedBox(height: responsiveWebHeight(screenHeight, 42)),
            _vanguard(context),
          ],
        ),
      ),
    );
  }

  Widget _intro(BuildContext context) => _card(
        context,
        AppStrings.educationSchool,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.educationProgram,
                style: headerSmallestWeb(AppColors.lightTan, context)),
            const SizedBox(height: 18),
            Text(AppStrings.educationSummary,
                style: bodyMediumWeb(AppColors.lightTan, context)),
          ],
        ),
      );

  Widget _coursework(BuildContext context) => _card(
        context,
        AppStrings.courseworkTitle,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.courseworkSummary,
                style: bodyMediumWeb(AppColors.lightTan, context)),
            const SizedBox(height: 24),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: AppStrings.coursework
                  .map((course) => _pill(context, course))
                  .toList(),
            ),
          ],
        ),
      );

  Widget _vanguard(BuildContext context) => _card(
        context,
        AppStrings.vanguardTitle,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.vanguardSummary,
                style: bodyMediumWeb(AppColors.lightTan, context)),
            const SizedBox(height: 18),
            Text(AppStrings.vanguardDetail,
                style: bodyMediumWeb(AppColors.lightTan, context)),
          ],
        ),
      );

  Widget _card(BuildContext context, String heading, Widget child) {
    return CustomContainer(
      boxColor: AppColors.mediumGreen,
      boxShadowColor: AppColors.shadowGreen,
      offset: min(responsiveWebHeight(screenHeight, 9),
          responsiveWebWidth(screenWidth, 9)),
      borderRadius: 22,
      child: Padding(
        padding: EdgeInsets.all(responsiveWebWidth(screenWidth, 38)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading, style: headerMediumWeb(AppColors.lightTan, context)),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }

  Widget _pill(BuildContext context, String course) => CustomContainer(
        boxColor: AppColors.darkTan,
        boxShadowColor: AppColors.lightBrown,
        offset: 3,
        borderRadius: 9,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(course,
              style: bodySmallWeb(AppColors.darkestBrown, context)),
        ),
      );
}
