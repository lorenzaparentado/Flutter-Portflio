import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Footer extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Footer({required this.screenWidth, required this.screenHeight});

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 548,
        color: AppColors.darkestBrown,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Contact Me",
                  style: headerBig(AppColors.lightTan, context),
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 320),
              child: Text(
                  textAlign: TextAlign.center,
                  style: bodyMedium(AppColors.lightTan, context),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis."),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 129),
              child: Row(
                children: [
                  contactButton("lorenzaparentado@gmail.com",
                      'assets/images/mailIcon.png'),
                  SizedBox(width: 50),
                  contactButton(
                      "(484) 350-8039", 'assets/images/phoneIcon.png'),
                  SizedBox(width: 50),
                  contactButton(
                      "laparentado", 'assets/images/linkedinIcon.png'),
                  SizedBox(width: 50),
                  contactButton(
                      "lorenzaparentado", 'assets/images/githubIcon.png'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              color: AppColors.mediumGreen,
              thickness: 1,
            ),
            SizedBox(
              height: 50,
            ),
            Text("Last Updated Month, Year", style: bodySmall(AppColors.lightTan, context),)
          ],
        ));
  }

  Widget contactButton(String text, String icon) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: AppColors.mediumGreen,
              offset: Offset(-8, 8),
              blurRadius: 0,
              blurStyle: BlurStyle.solid),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: bodyMedium(AppColors.darkestBrown, context),
            )
          ],
        ),
      ),
    );
  }
}
