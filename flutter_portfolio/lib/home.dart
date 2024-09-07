import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  static Color darkestBrown = Color(0xFF251B15);
  static Color mediumBrown = Color(0xFF573824);
  static Color lightBrown = Color(0xFF88664A);
  static Color darkTan = Color(0xFF88664A);
  static Color lightTan = Color(0xFFECEAE1);
  static Color darkestGreen = Color(0xFF1D2A14);
  static Color mediumGreen = Color(0xFF4A5540);
  static Color lightGreen = Color(0xFFA6AF9A);
  static Color shadowGreen = Color(0xFF0A1700);
  static String urban = 'Urbanist';
  static String monster = 'Montserrat';

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightTan,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(context),
            landing(context, screenWidth),
          ],
        ),
      ),
    );
  }

  Widget landing(BuildContext context, double screenWidth) {
    return Container(
      height: 729,
      child: Stack(
      children: [
        Positioned(
            top: 216,
            left: 100,
            child: Text("Lorenz\nAparentado",
                style: TextStyle(
                    fontFamily: urban,
                    fontSize: 56,
                    fontWeight: FontWeight.w600,
                    height: 58.8 / 56,
                    letterSpacing: 0.02 * 56,
                    color: darkestBrown))),
        Positioned(
            top: 182,
            left: (screenWidth / 2) - 207 - 20,
            child: Image.asset('assets/images/lorenzOutline.png')),   
        Positioned(
            top: 162,
            left: (screenWidth / 2) - 207,
            child: Image.asset('assets/images/lorenz.png')),
        Positioned(
            top: 216,
            right: 99,
            child: Text("Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
                style: TextStyle(
                    fontFamily: monster,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    height: 37.2 / 24,
                    letterSpacing: 0.02 * 24,
                    color: darkestBrown)))
      ],
    ));
  }

  Widget header(BuildContext context) {
    TextStyle headerButtons = TextStyle(
        fontFamily: urban,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 24 / 24,
        letterSpacing: 0.01 * 24,
        color: darkestBrown);

    return Container(
      height: 117,
      decoration: BoxDecoration(
        color: lightTan,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "About Me",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Lorenz",
              style: TextStyle(
                  fontFamily: urban,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  height: 42 / 40,
                  letterSpacing: 0.015 * 40,
                  color: darkestBrown),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
