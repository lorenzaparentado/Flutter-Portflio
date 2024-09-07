import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Footer extends StatefulWidget {
  final double screenWidth;

  Footer({required this.screenWidth});

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 729,
        color: AppColors.darkestBrown,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Contact Me",
                  style: headerBig(AppColors.lightTan),
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
                  style: bodyMedium(AppColors.lightTan),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis."),
            ),
          ],
        ));
  }}