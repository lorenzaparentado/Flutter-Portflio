import 'package:flutter/material.dart';
import 'package:flutter_portfolio/mobile/home_page/about_me_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/header_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/landing_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/projects_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/stats_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/work_mobile.dart';
import '../../styles/app_colors.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageMobile();
}

class _HomePageMobile extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightTan,
      body: Stack(
        children: [SingleChildScrollView(
          child: Column(
            children: [
              LandingMobile(screenWidth: screenWidth, screenHeight: screenHeight),
              StatsMobile(screenWidth: screenWidth, screenHeight: screenHeight),
              AboutMeMobile(screenWidth: screenWidth, screenHeight: screenHeight),
              WorkMobile(screenWidth: screenWidth, screenHeight: screenHeight),
              ProjectsMobile(screenWidth: screenWidth, screenHeight: screenHeight)
            ],
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderMobile(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),),
        ]
      ),
    );
  }
}
