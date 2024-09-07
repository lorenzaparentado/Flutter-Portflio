import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Landing extends StatefulWidget {
  final double screenWidth;

  Landing({required this.screenWidth});

  @override
  _Landing createState() => _Landing();
}

class _Landing extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 729,
      child: Stack(
        children: [
          Positioned(
            top: 216,
            left: 100,
            child: Text(
              "Lorenz\nAparentado",
              style: headerBiggest(AppColors.darkestBrown),
            ),
          ),
          Positioned(
            top: 182,
            left: (widget.screenWidth / 2) - 207 - 20,
            child: Image.asset('assets/images/lorenzOutline.png'),
          ),
          Positioned(
            top: 162,
            left: (widget.screenWidth / 2) - 207,
            child: Image.asset('assets/images/lorenz.png'),
          ),
          Positioned(
            top: 216,
            right: 99,
            child: Text(
              "Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
              style: bodyBig(AppColors.darkestBrown),
            ),
          ),
        ],
      ),
    );
  }
}
