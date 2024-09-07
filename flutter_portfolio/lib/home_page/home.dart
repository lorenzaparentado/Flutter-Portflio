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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.lightTan,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 117,),
                Landing(screenWidth: screenWidth),
                Stats(screenWidth: screenWidth),
                AboutMe(screenWidth: screenWidth),
                Work(screenWidth: screenWidth),
                Projects(screenWidth: screenWidth),
                Footer(screenWidth: screenWidth),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(screenWidth: screenWidth)),
        ],
      ),
    );
  }
}
