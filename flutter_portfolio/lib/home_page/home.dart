import 'dart:io';

import 'header.dart';
import 'landing.dart';
import 'stats.dart';
import 'about_me.dart';
import 'work.dart';
import 'projects.dart';
import 'footer.dart';

import 'package:flutter/material.dart';
import '../styles/text_styles.dart';
import '../styles/app_colors.dart';
import '../tools.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _landingKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _workKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

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
                Landing(landingKey: _landingKey, screenWidth: screenWidth, screenHeight: screenHeight),
                Stats(screenWidth: screenWidth, screenHeight: screenHeight),
                AboutMe(
                    aboutKey: _aboutMeKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                Work(
                    workKey: _workKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                Projects(
                    projectsKey: _projectsKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                Footer(
                    footerKey: _contactKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              scrollToSection: _scrollToSection,
              landingKey: _landingKey,
              aboutMeKey: _aboutMeKey,
              workKey: _workKey,
              projectsKey: _projectsKey,
              contactKey: _contactKey,
            ),
          ),
        ],
      ),
    );
  }
}
