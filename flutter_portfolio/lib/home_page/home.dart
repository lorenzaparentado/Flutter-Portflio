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
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightTan,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: responsiveHeight(screenHeight, 117),),
                Landing(screenWidth: screenWidth, screenHeight: screenHeight,),
                Stats(screenWidth: screenWidth, screenHeight: screenHeight,),
                AboutMe(screenWidth: screenWidth, screenHeight: screenHeight,),
                Work(screenWidth: screenWidth, screenHeight: screenHeight,),
                Projects(screenWidth: screenWidth, screenHeight: screenHeight,),
                Footer(screenWidth: screenWidth, screenHeight: screenHeight,),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(screenWidth: screenWidth, screenHeight: screenHeight,)),
        ],
      ),
    );
  }
}
