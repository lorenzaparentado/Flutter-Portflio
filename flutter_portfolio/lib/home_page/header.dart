import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Header extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Header({required this.screenWidth, required this.screenHeight});

  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: responsiveHeight(widget.screenHeight, 117),
      decoration: BoxDecoration(
        color: AppColors.lightTan,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(children: [
        SizedBox(
          height: responsiveHeight(widget.screenHeight, 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "About Me",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Lorenz",
              style: headerMedium(AppColors.darkestBrown, context),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: responsiveWidth(widget.screenWidth, 75)),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerSmallest(AppColors.darkestBrown, context),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(
          height: responsiveHeight(widget.screenHeight, 25),
        )
      ]),
    );
  }
}
