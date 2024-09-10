import 'dart:io';
import 'package:flutter/material.dart';
import '../../styles/text_styles.dart';
import '../../styles/app_colors.dart';
import '../../tools.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageMobile();
}

class _HomePageMobile extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Mobile test"),);
  }
  // final ScrollController _scrollController = ScrollController();
  // final GlobalKey _landingKey = GlobalKey();
  // final GlobalKey _aboutMeKey = GlobalKey();
  // final GlobalKey _workKey = GlobalKey();
  // final GlobalKey _projectsKey = GlobalKey();
  // final GlobalKey _contactKey = GlobalKey();

  // void _scrollToSection(GlobalKey key) {
  //   final context = key.currentContext;
  //   if (context != null) {
  //     Scrollable.ensureVisible(
  //       context,
  //       duration: Duration(seconds: 1),
  //       curve: ElasticOutCurve(1),
  //       alignment: .15,
  //     );
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   var screenWidth = MediaQuery.of(context).size.width;
  //   var screenHeight = MediaQuery.of(context).size.height;
  //   return Scaffold(
  //     backgroundColor: AppColors.lightTan,
  //     body: Stack(
  //       children: [
  //         SingleChildScrollView(
  //           controller: _scrollController,
  //           child: Column(
  //             children: [
  //               LandingWeb(landingKey: _landingKey, screenWidth: screenWidth, screenHeight: screenHeight),
  //               StatsWeb(screenWidth: screenWidth, screenHeight: screenHeight),
  //               AboutMeWeb(
  //                   aboutKey: _aboutMeKey,
  //                   screenWidth: screenWidth,
  //                   screenHeight: screenHeight),
  //               WorkWeb(
  //                   workKey: _workKey,
  //                   screenWidth: screenWidth,
  //                   screenHeight: screenHeight),
  //               ProjectsWeb(
  //                   projectsKey: _projectsKey,
  //                   screenWidth: screenWidth,
  //                   screenHeight: screenHeight),
  //               FooterWeb(
  //                   footerKey: _contactKey,
  //                   screenWidth: screenWidth,
  //                   screenHeight: screenHeight),
  //             ],
  //           ),
  //         ),
  //         Positioned(
  //           top: 0,
  //           left: 0,
  //           right: 0,
  //           child: HeaderWeb(
  //             screenWidth: screenWidth,
  //             screenHeight: screenHeight,
  //             scrollToSection: _scrollToSection,
  //             landingKey: _landingKey,
  //             aboutMeKey: _aboutMeKey,
  //             workKey: _workKey,
  //             projectsKey: _projectsKey,
  //             contactKey: _contactKey,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
