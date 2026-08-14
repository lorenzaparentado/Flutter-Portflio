import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class WorkMobile extends StatelessWidget {
  const WorkMobile({
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
    return Container(
      color: AppColors.lightTan,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveMobileWidth(screenWidth, 20),
          vertical: responsiveMobileHeight(screenHeight, 28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppStrings.work,
              key: workKey,
              textAlign: TextAlign.center,
              style: headerBigMobile(AppColors.darkestBrown, context),
            ),
            const SizedBox(height: 26),
            _card(context, AppStrings.educationSchool, [
              Text(AppStrings.educationProgram,
                  style: headerSmallMobile(AppColors.lightTan, context)),
              const SizedBox(height: 12),
              Text(AppStrings.educationSummary,
                  style: bodyMobile(AppColors.lightTan, context)),
            ]),
            const SizedBox(height: 24),
            _card(context, AppStrings.courseworkTitle, [
              Text(AppStrings.courseworkSummary,
                  style: bodyMobile(AppColors.lightTan, context)),
              const SizedBox(height: 18),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: AppStrings.coursework
                    .map((course) => _pill(context, course))
                    .toList(),
              ),
            ]),
            const SizedBox(height: 24),
            _card(context, AppStrings.vanguardTitle, [
              Text(AppStrings.vanguardSummary,
                  style: bodyMobile(AppColors.lightTan, context)),
              const SizedBox(height: 14),
              Text(AppStrings.vanguardDetail,
                  style: bodyMobile(AppColors.lightTan, context)),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context, String heading, List<Widget> children) =>
      CustomContainer(
        boxColor: AppColors.mediumGreen,
        boxShadowColor: AppColors.shadowGreen,
        offset: min(responsiveMobileHeight(screenHeight, 4),
            responsiveMobileWidth(screenWidth, 4)),
        borderRadius: 15,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading,
                  style: headerMediumMobile(AppColors.lightTan, context)),
              const SizedBox(height: 14),
              ...children,
            ],
          ),
        ),
      );

  Widget _pill(BuildContext context, String course) => CustomContainer(
        boxColor: AppColors.darkTan,
        boxShadowColor: AppColors.lightBrown,
        offset: 2,
        borderRadius: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          child: Text(course,
              style: bodySmallMobile(AppColors.darkestBrown, context)),
        ),
      );
}
