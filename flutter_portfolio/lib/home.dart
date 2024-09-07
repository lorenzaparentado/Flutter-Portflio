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
            stats(context, screenWidth),
            aboutMe(context, screenWidth),
            work(context, screenWidth),
          ],
        ),
      ),
    );
  }

  Widget work(BuildContext context, double screenWidth) {
    return Container(
        height: 921,
        color: darkestBrown,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                "TEST",
                style: headerBig(lightTan),
              ),
            ]),
          )
        ]));
  }

  Widget aboutMe(BuildContext context, double screenWidth) {
    return Container(
      height: 1000,
      color: lightTan,
      child: Stack(
        children: [
          Positioned(
            left: 100,
            top: 229,
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                color: mediumGreen,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: shadowGreen,
                      offset: Offset(-10, 10),
                      blurRadius: 10,
                      blurStyle: BlurStyle.solid),
                ],
              ),
              child: Center(child: Text('Image')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: headerBig(darkestBrown),
                )
              ],
            ),
          ),
          Positioned(
              left: 540,
              top: 229,
              right: 100,
              child: Text(
                  style: bodyMedium(darkestBrown),
                  "Hey I’m Lorenz, a third-year Computer Science major at Drexel University, pursuing a minor in Data Science with concentrations in Software Engineering and Artificial Intelligence/Machine Learning. With four years of experience in computer science, which began in high school, I have maintained a high college GPA of 3.87 and great academic standards. I enjoy working on projects in my free time and have participated in three hackathons, winning one of them.\n\nCurrently, I am on a co-op at Neuroflow as a Flutter mobile engineer, working part-time as I start school. Initially, I focused on mobile development, creating new features and implementing existing ones onto Flutter. Now, I am working on backend development and plan to develop into a full-stack engineer.\n\nOutside of coding, I have a variety of interests. As a musician, I play around five instruments, including guitar, saxophone, ukulele, flute, and a bit of piano. As an athlete, I enjoy running almost every morning and working out every afternoon. I also embrace my nerdy side by playing video games, especially open-world RPGs like the Fallout series and Cyberpunk, and I enjoy watching movies and TV shows.")),
          Padding(
            padding: EdgeInsets.only(top: 779),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Container(
                    height: 56,
                    width: 400,
                    decoration: BoxDecoration(
                      color: mediumGreen,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: shadowGreen,
                            offset: Offset(-10, 10),
                            blurRadius: 10,
                            blurStyle: BlurStyle.solid),
                      ],
                    ),
                    child: Center(child: Text('Image')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13),
                    child: Text(
                      "Last Updated Month, Year",
                      style: bodyMedium(darkestBrown),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget stats(BuildContext context, double screenWidth) {
    return Container(
      height: 700,
      color: darkestBrown,
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
                    style: headerBiggest(darkestBrown))),
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
                child: Text(
                    "Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
                    style: bodyBig(darkestBrown)))
          ],
        ));
  }

  Widget header(BuildContext context) {
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
                  style: headerSmallest(darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerSmallest(darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Lorenz",
              style: headerMedium(darkestBrown),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerSmallest(darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerSmallest(darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle headerBiggest(Color color) {
    return TextStyle(
        fontFamily: urban,
        fontSize: 56,
        fontWeight: FontWeight.w600,
        height: 58.8 / 56,
        letterSpacing: 0.02 * 56,
        color: color);
  }

  TextStyle headerBig(Color color) {
    return TextStyle(
        fontFamily: urban,
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 48,
        height: 50.4 / 48,
        letterSpacing: 0.02 / 48);
  }

  TextStyle headerMedium(Color color) {
    return TextStyle(
        fontFamily: urban,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 42 / 40,
        letterSpacing: 0.015 * 40,
        color: color);
  }

  TextStyle headerSmall(Color color) {
    return TextStyle(
        fontFamily: urban,
        fontSize: 32,
        fontWeight: FontWeight.w600,
        height: 33.6 / 32,
        letterSpacing: 0.015 * 32,
        color: color);
  }

  TextStyle headerSmallest(Color color) {
    return TextStyle(
        fontFamily: urban,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 24 / 24,
        letterSpacing: 0.01 * 24,
        color: color);
  }

  TextStyle bodyBig(Color color) {
    return TextStyle(
        fontFamily: monster,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 37.2 / 24,
        letterSpacing: 0.02 * 24,
        color: color);
  }

  TextStyle bodyMedium(Color color) {
    return TextStyle(
        fontFamily: monster,
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: 20,
        height: 31 / 20,
        letterSpacing: 0.02 / 20);
  }

  TextStyle bodySmall(Color color) {
    return TextStyle(
        fontFamily: monster,
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24.8 / 16,
        letterSpacing: 0.02 / 16);
  }
}
