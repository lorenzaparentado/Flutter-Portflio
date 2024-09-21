import 'dart:ui';

import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_styles_web.dart';
import 'package:flutter_portfolio/tools.dart';

import 'header_web.dart';
import 'landing_web.dart';
import 'stats_web.dart';
import 'about_me_web.dart';
import 'work_web.dart';
import 'projects_web.dart';
import 'footer_web.dart';

import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageWeb();
}

class _HomePageWeb extends State<HomePageWeb> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _landingWebKey = GlobalKey();
  final GlobalKey _aboutMeWebKey = GlobalKey();
  final GlobalKey _workWebKey = GlobalKey();
  final GlobalKey _projectsWebKey = GlobalKey();
  final GlobalKey _contactWebKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog(context, AppStrings.welcome, AppStrings.wip);
    });
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: AlertDialog(
            elevation: 50,
            backgroundColor: AppColors.mediumGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            title: Text(
              title,
              style: headerSmallWeb(AppColors.lightTan, context),
            ),
            content: SizedBox(
              width: responsiveWebWidth(MediaQuery.of(context).size.width, 500),
              child: Text(
                content,
                style: bodyMediumWeb(AppColors.lightTan, context),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(AppStrings.ok,
                      style: bodyMediumWeb(AppColors.lightTan, context)),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: ElasticOutCurve(1),
        alignment: .15,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightTan,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                LandingWeb(
                    landingKey: _landingWebKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                StatsWeb(screenWidth: screenWidth, screenHeight: screenHeight),
                AboutMeWeb(
                    aboutKey: _aboutMeWebKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                WorkWeb(
                    workKey: _workWebKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                ProjectsWeb(
                    projectsKey: _projectsWebKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                FooterWeb(
                    footerKey: _contactWebKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderWeb(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              scrollToSection: _scrollToSection,
              landingKey: _landingWebKey,
              aboutMeKey: _aboutMeWebKey,
              workKey: _workWebKey,
              projectsKey: _projectsWebKey,
              contactKey: _contactWebKey,
            ),
          ),
        ],
      ),
    );
  }
}
