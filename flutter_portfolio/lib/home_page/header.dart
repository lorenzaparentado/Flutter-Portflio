import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double padding = screenWidth * 0.05;

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: padding),
                  child: TextButton(
                    child: Text(
                      "About Me",
                      style: headerSmallest(AppColors.darkestBrown),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: padding),
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
                  padding: EdgeInsets.only(left: padding),
                  child: TextButton(
                    child: Text(
                      "Projects",
                      style: headerSmallest(AppColors.darkestBrown),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: padding),
                  child: TextButton(
                    child: Text(
                      "Contact",
                      style: headerSmallest(AppColors.darkestBrown),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
