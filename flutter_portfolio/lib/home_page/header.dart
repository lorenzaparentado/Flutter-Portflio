import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Header extends StatefulWidget {
  final double screenWidth;

  Header({required this.screenWidth});

  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      decoration: BoxDecoration(
        color: AppColors.lightTan,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
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
