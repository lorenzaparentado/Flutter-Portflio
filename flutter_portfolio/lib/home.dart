import 'dart:io';

import 'package:flutter/material.dart';
import 'styles/text_styles.dart';
import 'styles/app_colors.dart';

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
        color: AppColors.darkestBrown,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "TEST",
                style: headerBig(AppColors.lightTan),
              ),
            ]),
          )
        ]));
  }

  Widget aboutMe(BuildContext context, double screenWidth) {
    return Container(
      height: 1000,
      color: AppColors.lightTan,
      child: Stack(
        children: [
          Positioned(
            left: 100,
            top: 229,
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                color: AppColors.mediumGreen,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowGreen,
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
                  style: headerBig(AppColors.darkestBrown),
                )
              ],
            ),
          ),
          Positioned(
              left: 540,
              top: 229,
              right: 100,
              child: Text(
                  style: bodyMedium(AppColors.darkestBrown),
                  "Hey I’m Lorenz, a third-year Computer Science major at Drexel University, pursuing a minor in Data Science with concentrations in Software Engineering and Artificial Intelligence/Machine Learning. With four years of experience in computer science, which began in high school, I have maintained a high college GPA of 3.87 and great academic standards. I enjoy working on projects in my free time and have participated in three hackathons, winning one of them.\n\nCurrently, I am on a co-op at Neuroflow as a Flutter mobile engineer, working part-time as I start school. Initially, I focused on mobile development, creating new features and implementing existing ones onto Flutter. Now, I am working on backend development and plan to develop into a full-stack engineer.\n\nOutside of coding, I have a variety of interests. As a musician, I play around five instruments, including guitar, saxophone, ukulele, flute, and a bit of piano. As an athlete, I enjoy running almost every morning and working out every afternoon. I also embrace my nerdy side by playing video games, especially open-world RPGs like the Fallout series and Cyberpunk, and I enjoy watching movies and TV shows.")),
          Padding(
            padding: EdgeInsets.only(top: 779),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      height: 56,
                      width: 400,
                      decoration: BoxDecoration(
                        color: AppColors.mediumGreen,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.shadowGreen,
                              offset: Offset(-10, 10),
                              blurRadius: 10,
                              blurStyle: BlurStyle.solid),
                        ],
                      ),
                      child: Center(child: Text('Check out my resume!', style: headerSmall(AppColors.lightTan),)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13),
                    child: Text(
                      "Last Updated Month, Year",
                      style: bodyMedium(AppColors.darkestBrown),
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
      color: AppColors.darkestBrown,
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
                    style: headerBiggest(AppColors.darkestBrown))),
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
                    style: bodyBig(AppColors.darkestBrown)))
          ],
        ));
  }

  Widget header(BuildContext context) {
    return Container(
      height: 117,
      decoration: BoxDecoration(
        color: AppColors.lightTan,
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
                  style: headerSmallest(AppColors.darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerSmallest(AppColors.darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Lorenz",
              style: headerMedium(AppColors.darkestBrown),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerSmallest(AppColors.darkestBrown),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerSmallest(AppColors.darkestBrown),
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
